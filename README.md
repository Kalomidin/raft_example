
# Raft Example using gRPC
In this article, we will go over how we implement Raft using gRPC. Our example more closely illustrates our current project design.

## Usage of gRPC
LEX uses gRPC developed by [tikv](https://github.com/tikv/grpc-rs).
Let us go over example `helloworld` that exist in this [link](https://github.com/Kalomidin/raft_example). This example is just modified example `helloworld` inside library itself. You can find library example in this link(https://github.com/tikv/grpc-rs/tree/master/tests-and-examples/examples/hello_world) 

### Get Started
Let us first build an empty cargo project `helloworld`. Let us build inside `helloworld` folder `proto` folder. Now, let us work with proto folder. 

### Proto to gRPC RUST
In this section, we will mainly concentrate to proto folder.
Our first task is to write proto and write executer for proto. 
First, let us create our project proto folder. We can do so by creating
folder `proto` inside `proto` folder, then `helloworld` folder. Inside folder `helloworld` create your proto code. If you go to to `proto/proto/helloworld/helloworld.proto` example link, you can see the file having following datas:
```proto =
syntax = "proto3";

package helloworld;

// The greeting service definition.
service Greeter {
  // Sends a greeting
  rpc SayHello (HelloRequest) returns (HelloReply) {}
}

// The request message containing the user's name.
message HelloRequest {
  string name = 1;
}

// The response message containing the greetings
message HelloReply {
  string message = 1;
}

```
**You should have same structure of folders.**

Our first task is to convert proto to `rust`. To do so, we will write `build.rs`. Now, let us go to `helloworld/proto`. Create file `build.rs`. 
Inside `build.rs`, copy below code:
```rust =
fn main() {

  // specify output directory of the proto-gRPC RUST code
  let out_dir = "../helloworld";

  // Specify the package name
  let package =  "helloworld";
    
  // This is just special method. I am not sure how it works but I do not think it is something important
  let files: Vec<_> = walkdir::WalkDir::new(format!("proto/{}", package))
    .into_iter()
    .filter_map(|p| {
      let dent = p.expect("Error happened when search protos");
      if !dent.file_type().is_file() {
        return None;
      }
      
      // rust-protobuf is bad at dealing with path, keep it the same style.
      Some(format!("{}", dent.path().display()).replace('\\', "/"))
    })
    .collect();

    // Get your proto_gRPC code
    protobuf_build::generate_files(&["proto".to_owned()], &files, &out_dir);
}
```
This code will convert `proto` to our RUST code(I will not go over the code since it is well commented). Now, let us create our `Cargo.toml` for our proto in order to run `build.rs`. As you can see our `build.rs` has used some libraries such as `protobuf_build` and `walkdir`.  Now let us include this libraries to our `Cargo.toml`:
```rust =
[package]
name = "grpc-proto"
version = "0.1.0"
edition = "2018"
authors = ["Kalomidin-LucentBlock"]
build = "build.rs"

[build-dependencies]
protobuf-build = { version = "0.8", default-features = false }
walkdir = "2.2"
```
In order to run proto cargo project, we need to have `src` folder. Let us create our `src` folder with file `lib.rs`. Now, let us run our proto project. We will have following error:
```error =
 /Users/.cargo/registry/src/github.com-1ecc6299db9ec823/protobuf-build-0.8.0/src/lib.rs:35:5
   |
35 |     generate(includes, files, out_dir);
   |     ^^^^^^^^ not found in this scope

error: aborting due to previous error
```
This means that our protobuf_build has some dependencies that are not imported. Therefore, we need to include dependencies of the protobuf. There are several dependencies of protobuf_build and I do not know well either each library. Therefore, I would suggest to write this whole dependencies in your `Cargo,toml`:
```toml =
[package]
name = "grpc-proto"
version = "0.1.0"
edition = "2018"
authors = ["Kalomidin-LucentBlock"]
build = "build.rs"

[features]
default = ["protobuf-codec"]
protobuf-codec = ["grpcio/protobuf-codec", "grpcio-compiler/protobuf-codec", "protobuf-build/grpcio-protobuf-codec"]
prost-codec = ["prost-derive", "bytes", "lazy_static", "grpcio/prost-codec", "prost", "grpcio-compiler/prost-codec", "protobuf-build/grpcio-prost-codec"]

[dependencies]
futures = "0.1"
grpcio = {version = "0.5.0-alpha.3" }
bytes = { version = "0.4", optional = true }
prost = { version = "0.5", optional = true }
prost-derive = { version = "0.5", optional = true }
protobuf = "2"
lazy_static = { version = "1.3", optional = true }

[build-dependencies]
protobuf-build = { version = "0.8", default-features = false }
grpcio-compiler = { version = "0.5.0-alpha.2", default-features = false }
walkdir = "2.2"
```
Now, if we run this code, we will have another error. It will say `helloworld` folder is not defined because our `out_dir` path does not exist. To do so, create inside `helloworld` cargo project folder `helloworld`. Then run it again and you should be able to find generated proto and proto_grpc inside your `helloworld` folder. They are named as `helloworld.rs` and `helloworld_grpc.rs`. 

----

Great Job :). Next step is to use generated proto-gRPC in RUST for our project.

----

Let us create `bin` folder inside `src` folder in our `helloworld` crate project. Then inside `bin` folder create our `helloworld` project with two files as : `client.rs` and `server.rs`. Now, we should let `Cargo.toml` know about our `bin` projects:
```toml =
[package]
name = "raft_example"
version = "0.1.0"
authors = ["kalomidin"]
edition = "2018"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

[dependencies]


[[bin]]
name = "helloworld_server"
path = "src/bin/helloworld/server.rs"

[[bin]]
name = "hello_client"
path = "src/bin/helloworld/client.rs"
```
Next let us start working with our server and client implementations.

First, we will implement server side and accordingly we will implement client side.

First, we will build our server and then accordingly we will build our client.

First thing we should do in server side is to build our struct that needs to use our service:
```rust =
#[derive(Clone)]
struct GreeterService{
  a: u32
}
```
Next let us implement our service:
```rust =
impl Greeter for GreeterService {
  fn say_hello(&mut self, ctx: RpcContext<'_>, req: HelloRequest, sink: UnarySink<HelloReply>){
    // Print Incoming Message
    print!("Message is: {}", req.get_name());
    
    // prepare respond message
    let msg = format!("Hello {}", req.get_name());
    let mut resp = HelloReply::default();
    resp.set_message(msg);
    
    // Send the message
    let f = sink
      .success(resp)
      .map_err(move |e| error!("failed to reply {:?}: {:?}", req, e));
      ctx.spawn(f)
    
    }
}
```
Now, we have our service, let us use it.
First let us set number threads that will listen for our server:
```rust =
fn main(){
  let env = Arc::new(Environment::new(2));
}
```
Now, let us build our service:
```rust =
  // Set your service
  let service = create_greeter(GreeterService{a : 32});
```
Next, let us build our server upon the service:
```rust =
 // Create Server
    let mut server = ServerBuilder::new(env)
        .register_service(service)
        .bind("127.0.0.1", 50_051)
        .build()
        .unwrap();
```
Let us our server keep on running:
```rust =
server.start();
```
Now, we have some libraries not imported. Let us import missing libraries:
```rust =
#[macro_use]
extern crate log;

use std::io::Read;
use std::sync::Arc;
use std::{io, thread};

use futures::sync::oneshot;
use futures::Future;
use grpcio::{ChannelBuilder, Environment, ResourceQuota, RpcContext, ServerBuilder, UnarySink};

pub mod example {
    include!("../../../helloworld/mod.rs");
}

use example::helloworld::{HelloReply, HelloRequest};
use example::helloworld_grpc::{create_greeter, Greeter};
```
**Note:** Try to look up each library usage.

Now, still we are having error since we have not updated `Cargo.toml`. Let us go to `Cargo.toml` add each dependecies:
```toml =
[package]
name = "raft_example"
version = "0.1.0"
authors = ["kalomidin"]
edition = "2018"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html
[features]
default = ["protobuf-codec"]
protobuf-codec = ["protobuf", "grpcio/protobuf-codec"]
prost-codec = ["prost", "bytes", "grpcio/prost-codec"]

[dependencies]
log = "0.4"
grpcio = { version = "0.5.0-alpha.3", default-features = false, features = ["secure"] }
futures = "^0.1.15"
protobuf = { version = "2.0", optional = true }
prost = { version = "0.5", optional = true }
bytes = { version = "0.4.11", optional = true }

[[bin]]
name = "helloworld_server"
path = "src/bin/helloworld/server.rs"

[[bin]]
name = "helloworld_client"
path = "src/bin/helloworld/client.rs"
```

Now let us discuss what is happening in the service side. When we listen for any request, we will have 3 new upcoming datas, which are `ctx`, `req`, `sink`. `ctx` is used for context switching and **I have not figure it our how to use it**(I guess it is not important for LEX because LEX does not require multithreading in the server side. It should only listen from 1 node). Coming to `req`, it is requested data and `sink` is used to send to client.
So, we are done importing dependecies and writing the code. However, when we run the code, we have no message and quick termination. This is because Server is running in separate thread and it gets terminated when main thread terminates. Therefore, we can create an loop so that server never terminates. And we will have our final server side code as below:
```rust = 
#[macro_use]
extern crate log;

use std::io::Read;
use std::sync::Arc;
use std::{io, thread};

use futures::sync::oneshot;
use futures::Future;
use grpcio::{ChannelBuilder, Environment, ResourceQuota, RpcContext, ServerBuilder, UnarySink};

pub mod example {
    include!("../../../helloworld/mod.rs");
}

use example::helloworld::{HelloReply, HelloRequest};
use example::helloworld_grpc::{create_greeter, Greeter};


#[derive(Clone)]
struct GreeterService{
  a: u32
}
impl Greeter for GreeterService {
  fn say_hello(&mut self, ctx: RpcContext<'_>, req: HelloRequest, sink: UnarySink<HelloReply>){
    // Print Incoming Message
    print!("Message is: {}\n", req.get_name());
    //thread::sleep(std::time::Duration::from_millis(10000));
    // prepare respond message
    let msg = format!("Hello {}", req.get_name());
    let mut resp = HelloReply::default();
    resp.set_message(msg);
    
    // Send the message
    let f = sink
      .success(resp)
      .map_err(move |e| error!("failed to reply {:?}: {:?}", req, e));
      ctx.spawn(f)
    }
  }

fn main() {
  // Set the number of environments/ threads for the server
  let env = Arc::new(Environment::new(1));
  
  // Set your service
  let service = create_greeter(GreeterService{a : 32});
    
  // Create Server
  let mut server = ServerBuilder::new(env)
    .register_service(service)
    .bind("127.0.0.1", 50_051)
    .build()
    .unwrap();
  // Start your server
  server.start(); 
  loop {

  }
}
``` 

So, we have ready code for the server side. It is left to write code for client. Our client will send some data to the server to the address `127.0.0.1` with port `50_051`. 
In our client side, code looks as below:
```rust =

#[macro_use]
extern crate log;

use std::sync::Arc;

pub mod example {
    include!("../../../helloworld/mod.rs");
}

use grpcio::{ChannelBuilder, EnvBuilder};
use example::helloworld::HelloRequest;
use example::helloworld_grpc::GreeterClient;

fn main() {
    let env = Arc::new(EnvBuilder::new().build());
    let ch = ChannelBuilder::new(env).connect("localhost:50051");
    let client = GreeterClient::new(ch);
    let mut req = HelloRequest::default();
    req.set_name("world".to_owned());
    let reply = client.say_hello(&req).expect("rpc");
    print!("Reply is: {}\n", reply.get_message());
}

```
First we define environment because `ChannelBuilder` needs to have it is own environment:
```rust =
    let env = Arc::new(EnvBuilder::new().build());
```
**Note:** We need to learn how to set correct environment.

Then we set connection to the server and check whether connection is established:
```rust =
    let ch = ChannelBuilder::new(env).connect("localhost:50051");
```

Then we set our client and prepare our message:
```rust =
let client = GreeterClient::new(ch);
let mut req = HelloRequest::default();
req.set_name("world".to_owned());
```
Next step is to send and wait for the respond:
```rust =
let reply = client.say_hello(&req).expect("rpc");
print!("Reply is: {}\n", reply.get_message());
```
Now we have overviewed gRPC client. You can have look to following [github](https://github.com/Kalomidin/raft_example) for full code.

---

Now we have set up our gRPC simple example. Next step is to use gRPC with Raft

---

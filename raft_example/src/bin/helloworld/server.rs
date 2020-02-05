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
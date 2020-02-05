
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

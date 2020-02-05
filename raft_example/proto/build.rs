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
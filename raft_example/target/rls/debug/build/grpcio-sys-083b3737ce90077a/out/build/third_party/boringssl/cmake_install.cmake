# Install script for directory: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/third_party/fiat/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/ssl/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/ssl/test/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/fipstools/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/tool/cmake_install.cmake")
  include("/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/decrepit/cmake_install.cmake")

endif()


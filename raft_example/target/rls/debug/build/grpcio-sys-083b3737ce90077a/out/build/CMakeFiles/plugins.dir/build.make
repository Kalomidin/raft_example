# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build

# Utility rule file for plugins.

# Include the progress variables for this target.
include CMakeFiles/plugins.dir/progress.make

CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_cpp_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_csharp_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_node_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_objective_c_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_php_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_python_plugin
CMakeFiles/plugins: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/grpc_ruby_plugin


plugins: CMakeFiles/plugins
plugins: CMakeFiles/plugins.dir/build.make

.PHONY : plugins

# Rule to build all files generated by this target.
CMakeFiles/plugins.dir/build: plugins

.PHONY : CMakeFiles/plugins.dir/build

CMakeFiles/plugins.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/plugins.dir/cmake_clean.cmake
.PHONY : CMakeFiles/plugins.dir/clean

CMakeFiles/plugins.dir/depend:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles/plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/plugins.dir/depend


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

# Include any dependencies generated for this target.
include third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/depend.make

# Include the progress variables for this target.
include third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/flags.make

third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.o: third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/flags.make
third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.o: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/curve25519/spake25519.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.o"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/curve25519.dir/spake25519.c.o   -c /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/curve25519/spake25519.c

third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/curve25519.dir/spake25519.c.i"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/curve25519/spake25519.c > CMakeFiles/curve25519.dir/spake25519.c.i

third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/curve25519.dir/spake25519.c.s"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/curve25519/spake25519.c -o CMakeFiles/curve25519.dir/spake25519.c.s

curve25519: third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/spake25519.c.o
curve25519: third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/build.make

.PHONY : curve25519

# Rule to build all files generated by this target.
third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/build: curve25519

.PHONY : third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/build

third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/clean:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519 && $(CMAKE_COMMAND) -P CMakeFiles/curve25519.dir/cmake_clean.cmake
.PHONY : third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/clean

third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/depend:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/curve25519 /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519 /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/boringssl/crypto/curve25519/CMakeFiles/curve25519.dir/depend


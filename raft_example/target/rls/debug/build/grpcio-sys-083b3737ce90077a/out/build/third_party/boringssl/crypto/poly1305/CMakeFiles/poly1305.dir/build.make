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
include third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/depend.make

# Include the progress variables for this target.
include third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/flags.make

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305.c.o   -c /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305.c

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305.c.i"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305.c > CMakeFiles/poly1305.dir/poly1305.c.i

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305.c.s"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305.c -o CMakeFiles/poly1305.dir/poly1305.c.s

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_arm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305_arm.c.o   -c /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_arm.c

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305_arm.c.i"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_arm.c > CMakeFiles/poly1305.dir/poly1305_arm.c.i

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305_arm.c.s"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_arm.c -o CMakeFiles/poly1305.dir/poly1305_arm.c.s

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_vec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305_vec.c.o   -c /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_vec.c

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305_vec.c.i"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_vec.c > CMakeFiles/poly1305.dir/poly1305_vec.c.i

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305_vec.c.s"
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305/poly1305_vec.c -o CMakeFiles/poly1305.dir/poly1305_vec.c.s

poly1305: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o
poly1305: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o
poly1305: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o
poly1305: third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/build.make

.PHONY : poly1305

# Rule to build all files generated by this target.
third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/build: poly1305

.PHONY : third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/build

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/clean:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 && $(CMAKE_COMMAND) -P CMakeFiles/poly1305.dir/cmake_clean.cmake
.PHONY : third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/clean

third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/depend:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/third_party/boringssl/crypto/poly1305 /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305 /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/boringssl/crypto/poly1305/CMakeFiles/poly1305.dir/depend


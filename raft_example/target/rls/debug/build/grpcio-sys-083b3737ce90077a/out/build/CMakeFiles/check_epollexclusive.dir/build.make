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
include CMakeFiles/check_epollexclusive.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/check_epollexclusive.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/check_epollexclusive.dir/flags.make

CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o: CMakeFiles/check_epollexclusive.dir/flags.make
CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o: /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/test/build/check_epollexclusive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o   -c /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/test/build/check_epollexclusive.c

CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/test/build/check_epollexclusive.c > CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.i

CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc/test/build/check_epollexclusive.c -o CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.s

# Object files for target check_epollexclusive
check_epollexclusive_OBJECTS = \
"CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o"

# External object files for target check_epollexclusive
check_epollexclusive_EXTERNAL_OBJECTS =

check_epollexclusive: CMakeFiles/check_epollexclusive.dir/test/build/check_epollexclusive.c.o
check_epollexclusive: CMakeFiles/check_epollexclusive.dir/build.make
check_epollexclusive: libgrpc.a
check_epollexclusive: libgpr.a
check_epollexclusive: third_party/boringssl/ssl/libssl.a
check_epollexclusive: third_party/boringssl/crypto/libcrypto.a
check_epollexclusive: third_party/zlib/libz.a
check_epollexclusive: third_party/cares/cares/lib/libcares.a
check_epollexclusive: libaddress_sorting.a
check_epollexclusive: CMakeFiles/check_epollexclusive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check_epollexclusive"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_epollexclusive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/check_epollexclusive.dir/build: check_epollexclusive

.PHONY : CMakeFiles/check_epollexclusive.dir/build

CMakeFiles/check_epollexclusive.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check_epollexclusive.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check_epollexclusive.dir/clean

CMakeFiles/check_epollexclusive.dir/depend:
	cd /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/.cargo/registry/src/github.com-1ecc6299db9ec823/grpcio-sys-0.5.0-alpha.5/grpc /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build /Users/kalomidin/Desktop/raft_example/raft_example/target/rls/debug/build/grpcio-sys-083b3737ce90077a/out/build/CMakeFiles/check_epollexclusive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check_epollexclusive.dir/depend


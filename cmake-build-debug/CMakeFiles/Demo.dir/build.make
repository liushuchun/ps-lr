# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/macbook/CLionProjects/ps-lr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/macbook/CLionProjects/ps-lr/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Demo.dir/flags.make

CMakeFiles/Demo.dir/src/lr.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/lr.cpp.o: ../src/lr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Demo.dir/src/lr.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/lr.cpp.o -c /Users/macbook/CLionProjects/ps-lr/src/lr.cpp

CMakeFiles/Demo.dir/src/lr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/lr.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macbook/CLionProjects/ps-lr/src/lr.cpp > CMakeFiles/Demo.dir/src/lr.cpp.i

CMakeFiles/Demo.dir/src/lr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/lr.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macbook/CLionProjects/ps-lr/src/lr.cpp -o CMakeFiles/Demo.dir/src/lr.cpp.s

CMakeFiles/Demo.dir/src/lr.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/lr.cpp.o.requires

CMakeFiles/Demo.dir/src/lr.cpp.o.provides: CMakeFiles/Demo.dir/src/lr.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/lr.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/lr.cpp.o.provides

CMakeFiles/Demo.dir/src/lr.cpp.o.provides.build: CMakeFiles/Demo.dir/src/lr.cpp.o


CMakeFiles/Demo.dir/src/main.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Demo.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/main.cpp.o -c /Users/macbook/CLionProjects/ps-lr/src/main.cpp

CMakeFiles/Demo.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macbook/CLionProjects/ps-lr/src/main.cpp > CMakeFiles/Demo.dir/src/main.cpp.i

CMakeFiles/Demo.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macbook/CLionProjects/ps-lr/src/main.cpp -o CMakeFiles/Demo.dir/src/main.cpp.s

CMakeFiles/Demo.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/main.cpp.o.requires

CMakeFiles/Demo.dir/src/main.cpp.o.provides: CMakeFiles/Demo.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/main.cpp.o.provides

CMakeFiles/Demo.dir/src/main.cpp.o.provides.build: CMakeFiles/Demo.dir/src/main.cpp.o


CMakeFiles/Demo.dir/src/server.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/server.cpp.o: ../src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Demo.dir/src/server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/server.cpp.o -c /Users/macbook/CLionProjects/ps-lr/src/server.cpp

CMakeFiles/Demo.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macbook/CLionProjects/ps-lr/src/server.cpp > CMakeFiles/Demo.dir/src/server.cpp.i

CMakeFiles/Demo.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macbook/CLionProjects/ps-lr/src/server.cpp -o CMakeFiles/Demo.dir/src/server.cpp.s

CMakeFiles/Demo.dir/src/server.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/server.cpp.o.requires

CMakeFiles/Demo.dir/src/server.cpp.o.provides: CMakeFiles/Demo.dir/src/server.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/server.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/server.cpp.o.provides

CMakeFiles/Demo.dir/src/server.cpp.o.provides.build: CMakeFiles/Demo.dir/src/server.cpp.o


CMakeFiles/Demo.dir/src/util.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/util.cpp.o: ../src/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Demo.dir/src/util.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/util.cpp.o -c /Users/macbook/CLionProjects/ps-lr/src/util.cpp

CMakeFiles/Demo.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/util.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macbook/CLionProjects/ps-lr/src/util.cpp > CMakeFiles/Demo.dir/src/util.cpp.i

CMakeFiles/Demo.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/util.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macbook/CLionProjects/ps-lr/src/util.cpp -o CMakeFiles/Demo.dir/src/util.cpp.s

CMakeFiles/Demo.dir/src/util.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/util.cpp.o.requires

CMakeFiles/Demo.dir/src/util.cpp.o.provides: CMakeFiles/Demo.dir/src/util.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/util.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/util.cpp.o.provides

CMakeFiles/Demo.dir/src/util.cpp.o.provides.build: CMakeFiles/Demo.dir/src/util.cpp.o


CMakeFiles/Demo.dir/src/worker.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/src/worker.cpp.o: ../src/worker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Demo.dir/src/worker.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/src/worker.cpp.o -c /Users/macbook/CLionProjects/ps-lr/src/worker.cpp

CMakeFiles/Demo.dir/src/worker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/src/worker.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macbook/CLionProjects/ps-lr/src/worker.cpp > CMakeFiles/Demo.dir/src/worker.cpp.i

CMakeFiles/Demo.dir/src/worker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/src/worker.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macbook/CLionProjects/ps-lr/src/worker.cpp -o CMakeFiles/Demo.dir/src/worker.cpp.s

CMakeFiles/Demo.dir/src/worker.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/src/worker.cpp.o.requires

CMakeFiles/Demo.dir/src/worker.cpp.o.provides: CMakeFiles/Demo.dir/src/worker.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/worker.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/src/worker.cpp.o.provides

CMakeFiles/Demo.dir/src/worker.cpp.o.provides.build: CMakeFiles/Demo.dir/src/worker.cpp.o


# Object files for target Demo
Demo_OBJECTS = \
"CMakeFiles/Demo.dir/src/lr.cpp.o" \
"CMakeFiles/Demo.dir/src/main.cpp.o" \
"CMakeFiles/Demo.dir/src/server.cpp.o" \
"CMakeFiles/Demo.dir/src/util.cpp.o" \
"CMakeFiles/Demo.dir/src/worker.cpp.o"

# External object files for target Demo
Demo_EXTERNAL_OBJECTS =

../bin/Demo: CMakeFiles/Demo.dir/src/lr.cpp.o
../bin/Demo: CMakeFiles/Demo.dir/src/main.cpp.o
../bin/Demo: CMakeFiles/Demo.dir/src/server.cpp.o
../bin/Demo: CMakeFiles/Demo.dir/src/util.cpp.o
../bin/Demo: CMakeFiles/Demo.dir/src/worker.cpp.o
../bin/Demo: CMakeFiles/Demo.dir/build.make
../bin/Demo: CMakeFiles/Demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/Demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Demo.dir/build: ../bin/Demo

.PHONY : CMakeFiles/Demo.dir/build

CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/lr.cpp.o.requires
CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/main.cpp.o.requires
CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/server.cpp.o.requires
CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/util.cpp.o.requires
CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/src/worker.cpp.o.requires

.PHONY : CMakeFiles/Demo.dir/requires

CMakeFiles/Demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Demo.dir/clean

CMakeFiles/Demo.dir/depend:
	cd /Users/macbook/CLionProjects/ps-lr/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/macbook/CLionProjects/ps-lr /Users/macbook/CLionProjects/ps-lr /Users/macbook/CLionProjects/ps-lr/cmake-build-debug /Users/macbook/CLionProjects/ps-lr/cmake-build-debug /Users/macbook/CLionProjects/ps-lr/cmake-build-debug/CMakeFiles/Demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Demo.dir/depend

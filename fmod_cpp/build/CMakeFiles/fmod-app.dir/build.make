# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vignessh/pytorch_habana_cpu/fmod_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vignessh/pytorch_habana_cpu/fmod_cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/fmod-app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fmod-app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fmod-app.dir/flags.make

CMakeFiles/fmod-app.dir/fmod-app.cpp.o: CMakeFiles/fmod-app.dir/flags.make
CMakeFiles/fmod-app.dir/fmod-app.cpp.o: ../fmod-app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vignessh/pytorch_habana_cpu/fmod_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fmod-app.dir/fmod-app.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmod-app.dir/fmod-app.cpp.o -c /home/vignessh/pytorch_habana_cpu/fmod_cpp/fmod-app.cpp

CMakeFiles/fmod-app.dir/fmod-app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmod-app.dir/fmod-app.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vignessh/pytorch_habana_cpu/fmod_cpp/fmod-app.cpp > CMakeFiles/fmod-app.dir/fmod-app.cpp.i

CMakeFiles/fmod-app.dir/fmod-app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmod-app.dir/fmod-app.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vignessh/pytorch_habana_cpu/fmod_cpp/fmod-app.cpp -o CMakeFiles/fmod-app.dir/fmod-app.cpp.s

CMakeFiles/fmod-app.dir/fmod-app.cpp.o.requires:

.PHONY : CMakeFiles/fmod-app.dir/fmod-app.cpp.o.requires

CMakeFiles/fmod-app.dir/fmod-app.cpp.o.provides: CMakeFiles/fmod-app.dir/fmod-app.cpp.o.requires
	$(MAKE) -f CMakeFiles/fmod-app.dir/build.make CMakeFiles/fmod-app.dir/fmod-app.cpp.o.provides.build
.PHONY : CMakeFiles/fmod-app.dir/fmod-app.cpp.o.provides

CMakeFiles/fmod-app.dir/fmod-app.cpp.o.provides.build: CMakeFiles/fmod-app.dir/fmod-app.cpp.o


# Object files for target fmod-app
fmod__app_OBJECTS = \
"CMakeFiles/fmod-app.dir/fmod-app.cpp.o"

# External object files for target fmod-app
fmod__app_EXTERNAL_OBJECTS =

fmod-app: CMakeFiles/fmod-app.dir/fmod-app.cpp.o
fmod-app: CMakeFiles/fmod-app.dir/build.make
fmod-app: /home/vignessh/pytorch_habana_cpu/libtorch/lib/libtorch.so
fmod-app: /home/vignessh/pytorch_habana_cpu/libtorch/lib/libc10.so
fmod-app: /home/vignessh/pytorch_habana_cpu/libtorch/lib/libc10.so
fmod-app: CMakeFiles/fmod-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vignessh/pytorch_habana_cpu/fmod_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fmod-app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmod-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fmod-app.dir/build: fmod-app

.PHONY : CMakeFiles/fmod-app.dir/build

CMakeFiles/fmod-app.dir/requires: CMakeFiles/fmod-app.dir/fmod-app.cpp.o.requires

.PHONY : CMakeFiles/fmod-app.dir/requires

CMakeFiles/fmod-app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fmod-app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fmod-app.dir/clean

CMakeFiles/fmod-app.dir/depend:
	cd /home/vignessh/pytorch_habana_cpu/fmod_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vignessh/pytorch_habana_cpu/fmod_cpp /home/vignessh/pytorch_habana_cpu/fmod_cpp /home/vignessh/pytorch_habana_cpu/fmod_cpp/build /home/vignessh/pytorch_habana_cpu/fmod_cpp/build /home/vignessh/pytorch_habana_cpu/fmod_cpp/build/CMakeFiles/fmod-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fmod-app.dir/depend


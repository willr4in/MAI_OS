# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/willrain/MAI/OS/lab4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/willrain/MAI/OS/lab4/build

# Include any dependencies generated for this target.
include CMakeFiles/comp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/comp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/comp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/comp.dir/flags.make

CMakeFiles/comp.dir/compile.cpp.o: CMakeFiles/comp.dir/flags.make
CMakeFiles/comp.dir/compile.cpp.o: ../compile.cpp
CMakeFiles/comp.dir/compile.cpp.o: CMakeFiles/comp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/willrain/MAI/OS/lab4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/comp.dir/compile.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/comp.dir/compile.cpp.o -MF CMakeFiles/comp.dir/compile.cpp.o.d -o CMakeFiles/comp.dir/compile.cpp.o -c /home/willrain/MAI/OS/lab4/compile.cpp

CMakeFiles/comp.dir/compile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comp.dir/compile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/willrain/MAI/OS/lab4/compile.cpp > CMakeFiles/comp.dir/compile.cpp.i

CMakeFiles/comp.dir/compile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comp.dir/compile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/willrain/MAI/OS/lab4/compile.cpp -o CMakeFiles/comp.dir/compile.cpp.s

# Object files for target comp
comp_OBJECTS = \
"CMakeFiles/comp.dir/compile.cpp.o"

# External object files for target comp
comp_EXTERNAL_OBJECTS =

comp: CMakeFiles/comp.dir/compile.cpp.o
comp: CMakeFiles/comp.dir/build.make
comp: libimpl2.so
comp: CMakeFiles/comp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/willrain/MAI/OS/lab4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable comp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/comp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/comp.dir/build: comp
.PHONY : CMakeFiles/comp.dir/build

CMakeFiles/comp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/comp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/comp.dir/clean

CMakeFiles/comp.dir/depend:
	cd /home/willrain/MAI/OS/lab4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/willrain/MAI/OS/lab4 /home/willrain/MAI/OS/lab4 /home/willrain/MAI/OS/lab4/build /home/willrain/MAI/OS/lab4/build /home/willrain/MAI/OS/lab4/build/CMakeFiles/comp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/comp.dir/depend


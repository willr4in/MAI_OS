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
CMAKE_SOURCE_DIR = /home/willrain/MAI/OS/lab3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/willrain/MAI/OS/lab3/build

# Include any dependencies generated for this target.
include CMakeFiles/child1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/child1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/child1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/child1.dir/flags.make

CMakeFiles/child1.dir/child1.c.o: CMakeFiles/child1.dir/flags.make
CMakeFiles/child1.dir/child1.c.o: ../child1.c
CMakeFiles/child1.dir/child1.c.o: CMakeFiles/child1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/willrain/MAI/OS/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/child1.dir/child1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/child1.dir/child1.c.o -MF CMakeFiles/child1.dir/child1.c.o.d -o CMakeFiles/child1.dir/child1.c.o -c /home/willrain/MAI/OS/lab3/child1.c

CMakeFiles/child1.dir/child1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/child1.dir/child1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/willrain/MAI/OS/lab3/child1.c > CMakeFiles/child1.dir/child1.c.i

CMakeFiles/child1.dir/child1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/child1.dir/child1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/willrain/MAI/OS/lab3/child1.c -o CMakeFiles/child1.dir/child1.c.s

# Object files for target child1
child1_OBJECTS = \
"CMakeFiles/child1.dir/child1.c.o"

# External object files for target child1
child1_EXTERNAL_OBJECTS =

child1: CMakeFiles/child1.dir/child1.c.o
child1: CMakeFiles/child1.dir/build.make
child1: CMakeFiles/child1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/willrain/MAI/OS/lab3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable child1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/child1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/child1.dir/build: child1
.PHONY : CMakeFiles/child1.dir/build

CMakeFiles/child1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/child1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/child1.dir/clean

CMakeFiles/child1.dir/depend:
	cd /home/willrain/MAI/OS/lab3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/willrain/MAI/OS/lab3 /home/willrain/MAI/OS/lab3 /home/willrain/MAI/OS/lab3/build /home/willrain/MAI/OS/lab3/build /home/willrain/MAI/OS/lab3/build/CMakeFiles/child1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/child1.dir/depend


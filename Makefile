# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/willian/Projects/shared_buffer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/willian/Projects/shared_buffer

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/willian/Projects/shared_buffer/CMakeFiles /home/willian/Projects/shared_buffer/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/willian/Projects/shared_buffer/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named consumer

# Build rule for target.
consumer: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 consumer
.PHONY : consumer

# fast build rule for target.
consumer/fast:
	$(MAKE) -f CMakeFiles/consumer.dir/build.make CMakeFiles/consumer.dir/build
.PHONY : consumer/fast

#=============================================================================
# Target rules for targets named producer

# Build rule for target.
producer: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 producer
.PHONY : producer

# fast build rule for target.
producer/fast:
	$(MAKE) -f CMakeFiles/producer.dir/build.make CMakeFiles/producer.dir/build
.PHONY : producer/fast

consumer.o: consumer.c.o

.PHONY : consumer.o

# target to build an object file
consumer.c.o:
	$(MAKE) -f CMakeFiles/consumer.dir/build.make CMakeFiles/consumer.dir/consumer.c.o
.PHONY : consumer.c.o

consumer.i: consumer.c.i

.PHONY : consumer.i

# target to preprocess a source file
consumer.c.i:
	$(MAKE) -f CMakeFiles/consumer.dir/build.make CMakeFiles/consumer.dir/consumer.c.i
.PHONY : consumer.c.i

consumer.s: consumer.c.s

.PHONY : consumer.s

# target to generate assembly for a file
consumer.c.s:
	$(MAKE) -f CMakeFiles/consumer.dir/build.make CMakeFiles/consumer.dir/consumer.c.s
.PHONY : consumer.c.s

producer.o: producer.c.o

.PHONY : producer.o

# target to build an object file
producer.c.o:
	$(MAKE) -f CMakeFiles/producer.dir/build.make CMakeFiles/producer.dir/producer.c.o
.PHONY : producer.c.o

producer.i: producer.c.i

.PHONY : producer.i

# target to preprocess a source file
producer.c.i:
	$(MAKE) -f CMakeFiles/producer.dir/build.make CMakeFiles/producer.dir/producer.c.i
.PHONY : producer.c.i

producer.s: producer.c.s

.PHONY : producer.s

# target to generate assembly for a file
producer.c.s:
	$(MAKE) -f CMakeFiles/producer.dir/build.make CMakeFiles/producer.dir/producer.c.s
.PHONY : producer.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... consumer"
	@echo "... edit_cache"
	@echo "... producer"
	@echo "... consumer.o"
	@echo "... consumer.i"
	@echo "... consumer.s"
	@echo "... producer.o"
	@echo "... producer.i"
	@echo "... producer.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


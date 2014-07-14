# /test/CreateTargetForUnusedFunctionCheckWarnOnly.cmake
# Adds some sources to the global unused function check properties and adds
# checks to a newly created external target.
#
# See LICENCE.md for Copyright Information.

include (${CPPCHECK_COMMON_UNIVERSAL_CMAKE_DIRECTORY}/CPPCheck.cmake)
include (${CPPCHECK_COMMON_UNIVERSAL_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

find_program (CPPCHECK_EXECUTABLE cppcheck)

set (SOURCES
     ${CMAKE_CURRENT_SOURCE_DIR}/FirstSource.cpp)
file (WRITE ${SOURCES} "")

cppcheck_add_to_unused_function_check (global
                                       SOURCES ${SOURCES})

# Put CMAKE_CURRENT_SOURCE_DIR in the global INCLUDES
cppcheck_add_unused_function_check_with_name (global)
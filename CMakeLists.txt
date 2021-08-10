# CMakeLists.txt

cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(CmakePrj)

set(TOP_DIR "${CMAKE_CURRENT_SOURCE_DIR}")


set(HAL_INC)
add_subdirectory(hal)
include_directories(${HAL_INC})

set(SDK_INC)
add_subdirectory(sdk)
include_directories(${SDK_INC})

include(apps/apps.cmake)
message(debug:${APPS_DIR})

execute_process(COMMAND echo hello world!)


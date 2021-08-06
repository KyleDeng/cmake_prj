# CMakeLists.txt

cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(CmakePrj)

set(TOP_DIR "${CMAKE_CURRENT_SOURCE_DIR}")

set(HAL_INC)

add_subdirectory(hal)
include_directories(${HAL_INC})

add_subdirectory(sdk)


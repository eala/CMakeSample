cmake_minimum_required(VERSION 2.8)

SET(TESTLIBA_SOURCE_DIR ${CMAKE_SOURCE_DIR}/3rdparty)
SET(TESTLIBA_BINARY_DIR ${CMAKE_BINARY_DIR}/3rdparty)

add_subdirectory(3rdparty)
add_subdirectory(app)

cmake_minimum_required(VERSION 2.8)

SET(LIB_3RD_PARTY_A_SOURCE_DIR ${CMAKE_SOURCE_DIR}/3rdparty)
SET(LIB_3RD_PARTY_A_BINARY_DIR ${CMAKE_BINARY_DIR}/3rdparty)

SET(LIBA_SOURCE_DIR ${CMAKE_SOURCE_DIR}/lib/libA)
SET(LIBA_BINARY_DIR ${CMAKE_BINARY_DIR}/lib/libA)

add_subdirectory(3rdparty)
add_subdirectory(lib)
add_subdirectory(app)

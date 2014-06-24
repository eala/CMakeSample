cmake_minimum_required(VERSION 2.8)

project(libA)

set(the_target libA)

# includes its dependent library, e.g. 3rdparty libraries
include(${CMAKE_SOURCE_DIR}/3rdparty/lib3rdpartyA.cmake REQUIRED)


include_directories(${CMAKE_SOURCE_DIR}/lib/libA)

set(SRCS
	libAsrc.cpp
)
	
set(HDRS
	libAheader.h
)

if(MSVC)
    if(BUILD_WITH_STATIC_CRT)
        foreach(flag_var
                CMAKE_C_FLAGS CMAKE_C_FLAGS_DEBUG CMAKE_C_FLAGS_RELEASE
                CMAKE_C_FLAGS_MINSIZEREL CMAKE_C_FLAGS_RELWITHDEBINFO
                CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
                CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)
           if(${flag_var} MATCHES "/MD")
              string(REGEX REPLACE "/MD" "/MT" ${flag_var} "${${flag_var}}")
           endif()
           if(${flag_var} MATCHES "/MDd")
              string(REGEX REPLACE "/MDd" "/MTd" ${flag_var} "${${flag_var}}")
           endif()
        endforeach(flag_var)

    else(BUILD_WITH_STATIC_CRT)
        foreach(flag_var
                CMAKE_C_FLAGS CMAKE_C_FLAGS_DEBUG CMAKE_C_FLAGS_RELEASE
                CMAKE_C_FLAGS_MINSIZEREL CMAKE_C_FLAGS_RELWITHDEBINFO
                CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
                CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)
           if(${flag_var} MATCHES "/MT")
              string(REGEX REPLACE "/MT" "/MD" ${flag_var} "${${flag_var}}")
           endif()
           if(${flag_var} MATCHES "/MTd")
              string(REGEX REPLACE "/MTd" "/MDd" ${flag_var} "${${flag_var}}")
           endif()
        endforeach(flag_var)
    endif(BUILD_WITH_STATIC_CRT)
endif(MSVC)

add_library(${the_target} STATIC ${SRCS} ${HDRS})

set_target_properties(${the_target}
    PROPERTIES
    OUTPUT_NAME "LibA"
    DEBUG_POSTFIX "d"
    ARCHIVE_OUTPUT_DIRECTORY ${LIBA_BINARY_DIR}/lib
    RUNTIME_OUTPUT_DIRECTORY ${LIBA_BINARY_DIR}/bin
)

install(TARGETS ${the_target}
	RUNTIME DESTINATION bin COMPONENT main
	LIBRARY DESTINATION lib COMPONENT main
	ARCHIVE DESTINATION lib COMPONENT main)	

# Components will list all the library name for linking instructions, e.g. g++ -lmath -lzip, here we will gen math zip
add_dependencies(${the_target} ${LIB_3RD_PARTY_A_LIB_COMPONENTS})

# link libraries, e.g. testlibA.lib
target_link_libraries(${the_target} ${LIB_3RD_PARTY_A_LIBS})

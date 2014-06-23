SET(LIBA_INCLUDE_DIR "${LIBA_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${LIBA_INCLUDE_DIR})

SET(LIBA_LIB_DIR ${LIBA_BINARY_DIR}/lib)
LINK_DIRECTORIES(${LIBA_LIB_DIR})

SET(LIBA_LIB_COMPONENTS libA)

SET(LIBA_LIBS "")
if(WIN32)
  foreach(__CVLIB ${LIBA_LIB_COMPONENTS})
      # CMake>=2.6 supports the notation "debug XXd optimized XX"
      if (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} VERSION_GREATER 2.4)
          # Modern CMake:
          SET(LIBA_LIBS ${LIBA_LIBS} debug ${__CVLIB}d optimized ${__CVLIB})
      else()
          # Old CMake:
          SET(LIBA_LIBS ${LIBA_LIBS} ${__CVLIB})
      endif()
  endforeach()
else()
  foreach(__CVLIB ${LIBA_LIB_COMPONENTS})
    SET(LIBA_LIBS ${LIBA_LIBS} ${__CVLIB})
  endforeach()
endif()

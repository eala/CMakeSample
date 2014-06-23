SET(TESTLIBA_INCLUDE_DIR "${TESTLIBA_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${TESTLIBA_INCLUDE_DIR})

SET(TESTLIBA_LIB_DIR ${TESTLIBA_BINARY_DIR}/lib)
LINK_DIRECTORIES(${TESTLIBA_LIB_DIR})

SET(TESTLIBA_LIB_COMPONENTS testLibA)

SET(TESTLIBA_LIBS "")
if(WIN32)
  foreach(__CVLIB ${TESTLIBA_LIB_COMPONENTS})
      # CMake>=2.6 supports the notation "debug XXd optimized XX"
      if (${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} VERSION_GREATER 2.4)
          # Modern CMake:
          SET(TESTLIBA_LIBS ${TESTLIBA_LIBS} debug ${__CVLIB}d optimized ${__CVLIB})
      else()
          # Old CMake:
          SET(TESTLIBA_LIBS ${TESTLIBA_LIBS} ${__CVLIB})
      endif()
  endforeach()
else()
  foreach(__CVLIB ${TESTLIBA_LIB_COMPONENTS})
    SET(TESTLIBA_LIBS ${TESTLIBA_LIBS} ${__CVLIB})
  endforeach()
endif()
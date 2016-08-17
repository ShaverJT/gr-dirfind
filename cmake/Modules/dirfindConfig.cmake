INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_DIRFIND dirfind)

FIND_PATH(
    DIRFIND_INCLUDE_DIRS
    NAMES dirfind/api.h
    HINTS $ENV{DIRFIND_DIR}/include
        ${PC_DIRFIND_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    DIRFIND_LIBRARIES
    NAMES gnuradio-dirfind
    HINTS $ENV{DIRFIND_DIR}/lib
        ${PC_DIRFIND_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DIRFIND DEFAULT_MSG DIRFIND_LIBRARIES DIRFIND_INCLUDE_DIRS)
MARK_AS_ADVANCED(DIRFIND_LIBRARIES DIRFIND_INCLUDE_DIRS)


set(CMAKE_C_COMPILER "psp-gcc")
set(CMAKE_CXX_COMPILER "psp-g++")
set(CMAKE_AR "psp-ar")
set(CMAKE_RANLIB "psp-ranlib")
set(CMAKE_SYSTEM_PROCESSOR mipsel)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_C_LINK_FLAGS "")
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

execute_process(COMMAND psp-config --pspsdk-path OUTPUT_VARIABLE PSPSDK_PATH)

set(CMAKE_CXX_FLAGS " -I${PSPSDK_PATH}/include -G0 -Wcast-align")
set(CMAKE_C_FLAGS " -I${PSPSDK_PATH}/include -G0 -Wcast-align")

add_definitions(-DPSP)
set(BUILD_SHARED_LIBS OFF CACHE INTERNAL "Shared libs not available" )
set(CMAKE_POSITION_INDEPENDENT_CODE OFF)

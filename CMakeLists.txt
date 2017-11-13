cmake_minimum_required(VERSION 2.8.7)

project(ps-lr C CXX)
set(CMAKE_CXX_FLAGS "-std=c++11 -O3 -Wno-unknown-pragmas -Wall")

message(STATUS "Start building project " ${DISTLR_BINARY_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin") # set output directory

set(PS_LITE_DIR "${PROJECT_SOURCE_DIR}/ps-lite")
set(THIRD_PARTY_DIR "${PROJECT_SOURCE_DIR}/deps")

link_directories(
        "${THIRD_PARTY_DIR}/lib"
)

include_directories(
        "${PROJECT_SOURCE_DIR}/include"
        "${PS_LITE_DIR}/include"
)

add_subdirectory("ps-lite")

file(GLOB hi_src "src/*cpp")

add_executable(Demo ${hi_src})
#target_link_libraries(hi )

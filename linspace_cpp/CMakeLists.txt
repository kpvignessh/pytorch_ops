cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(linspace-app)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(linspace-app linspace-app.cpp)
target_link_libraries(linspace-app "${TORCH_LIBRARIES}")
set_property(TARGET linspace-app PROPERTY CXX_STANDARD 14)

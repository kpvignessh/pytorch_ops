cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(fmod-app)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(fmod-app fmod-app.cpp)
target_link_libraries(fmod-app "${TORCH_LIBRARIES}")
set_property(TARGET fmod-app PROPERTY CXX_STANDARD 14)

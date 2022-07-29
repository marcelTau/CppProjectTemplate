cmake_minimum_required(VERSION 3.21)

include(FetchContent)

project(TODO_ChangeProjectName)

set(sources src/main.cpp)
set(CMAKE_CXX_STANDARD 23)

# This is a way to use cmake to download packages for you.
FetchContent_Declare(
  fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG        92d36e82c437f33562bb32096378746c69d96aac
)

add_executable(${PROJECT_NAME} ${sources})
target_include_directories(${PROJECT_NAME} PUBLIC include)

FetchContent_MakeAvailable(fmt)
target_link_libraries(${PROJECT_NAME} fmt)

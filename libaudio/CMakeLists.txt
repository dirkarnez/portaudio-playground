cmake_minimum_required(VERSION 3.18)

# set(CMAKE_FIND_DEBUG_MODE TRUE)
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project("libaudio") # ${PROJECT_NAME}

find_package(portaudio 19 EXACT REQUIRED) # PATHS "P:\\Downloads\\cpp-libraries\\portaudio\\build\\cmake\\portaudio")

if(portaudio_FOUND)
    message(STATUS "YES")
else()
    message(STATUS "NO")
endif()


add_library("${PROJECT_NAME}" STATIC
    "src/libaudio.c"
    "include/libaudio.h"
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
    "include")

target_link_libraries("${PROJECT_NAME}" portaudio_static)
target_link_options("${PROJECT_NAME}" PRIVATE "-static")

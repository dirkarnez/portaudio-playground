cmake_minimum_required(VERSION 3.18)

set(CMAKE_FIND_DEBUG_MODE TRUE)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project("portaudio-playground") # ${PROJECT_NAME}

find_package(portaudio 19 EXACT REQUIRED) # PATHS "P:\\Downloads\\cpp-libraries\\portaudio\\build\\cmake\\portaudio")

if(portaudio_FOUND)
    message(STATUS "YES")
else()
    message(STATUS "NO")
endif()

add_executable("app"
    "src/main.c"
)

target_link_libraries("app" portaudio_static)
target_link_options("app" PRIVATE "-static")

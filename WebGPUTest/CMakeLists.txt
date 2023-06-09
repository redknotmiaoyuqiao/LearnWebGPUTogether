CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT(LearnWebGPUTogether VERSION 1.0.0.0)

MESSAGE( STATUS "CMAKE_PROJECT_NAME    = ${CMAKE_PROJECT_NAME}" )
MESSAGE( STATUS "PROJECT_VERSION_MAJOR = ${PROJECT_VERSION_MAJOR}" )
MESSAGE( STATUS "PROJECT_VERSION_MINOR = ${PROJECT_VERSION_MINOR}" )
MESSAGE( STATUS "PROJECT_VERSION_PATCH = ${PROJECT_VERSION_PATCH}" )
MESSAGE( STATUS "PROJECT_VERSION_TWEAK = ${PROJECT_VERSION_TWEAK}" )
MESSAGE( STATUS "PROJECT_HOMEPAGE_URL = ${PROJECT_HOMEPAGE_URL}")
MESSAGE( STATUS "CMAKE_PROJECT_DESCRIPTION = ${CMAKE_PROJECT_DESCRIPTION}" )

INCLUDE_DIRECTORIES (${CMAKE_SOURCE_DIR}/../Lib/glfw_install/include/)

LINK_DIRECTORIES (${CMAKE_SOURCE_DIR}/../Lib/glfw_install/lib/)


IF (CMAKE_SYSTEM_NAME MATCHES "Linux")
    MESSAGE(STATUS "current platform: Linux ")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Windows")
    MESSAGE(STATUS "current platform: Windows")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Android")
    MESSAGE(STATUS "current platform: Android")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Darwin")
    MESSAGE(STATUS "current platform: Darwin")
    set(CMAKE_EXE_LINKER_FLAGS
        " -framework QuartzCore -framework Metal -framework IOKit -framework AudioToolbox -framework CoreGraphics -framework CoreMedia -framework Cocoa -framework VideoToolbox -framework IOSurface -framework AVFoundation -framework Security -framework CoreFoundation -framework CoreVideo -framework OpenGL -framework AppKit -framework CoreImage -framework VideoDecodeAcceleration"
    )
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "iOS")
    MESSAGE(STATUS "current platform: iOS")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Emscripten")
    MESSAGE(STATUS "current platform: Emscripten")
ELSE ()
    MESSAGE(STATUS "other platform: ${CMAKE_SYSTEM_NAME}")
ENDIF (CMAKE_SYSTEM_NAME MATCHES "Linux")

ADD_SUBDIRECTORY(WebGPUTest)
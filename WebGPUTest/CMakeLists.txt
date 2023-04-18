CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT(LearnWebGPUTogether VERSION 1.0.0.0)

MESSAGE( STATUS "CMAKE_PROJECT_NAME    = ${CMAKE_PROJECT_NAME}" )
MESSAGE( STATUS "PROJECT_VERSION_MAJOR = ${PROJECT_VERSION_MAJOR}" )
MESSAGE( STATUS "PROJECT_VERSION_MINOR = ${PROJECT_VERSION_MINOR}" )
MESSAGE( STATUS "PROJECT_VERSION_PATCH = ${PROJECT_VERSION_PATCH}" )
MESSAGE( STATUS "PROJECT_VERSION_TWEAK = ${PROJECT_VERSION_TWEAK}" )
MESSAGE( STATUS "PROJECT_HOMEPAGE_URL = ${PROJECT_HOMEPAGE_URL}")
MESSAGE( STATUS "CMAKE_PROJECT_DESCRIPTION = ${CMAKE_PROJECT_DESCRIPTION}" )

ADD_SUBDIRECTORY(WebGPUTest)
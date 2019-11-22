# Install script for directory: /usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fluidsynth" TYPE FILE FILES
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/audio.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/event.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/gen.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/log.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/midi.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/misc.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/mod.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/ramsfont.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/seq.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/seqbind.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/settings.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/sfont.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/shell.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/synth.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/types.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/fluidsynth-1.1.11/include/fluidsynth/voice.h"
    "/usr/home/trigex/.config/dwm/fluidsynth/work/.build/include/fluidsynth/version.h"
    )
endif()


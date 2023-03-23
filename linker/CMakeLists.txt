cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)
project(linker C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

include_directories(${CMAKE_SOURCE_DIR})

add_executable(linker
    crt1.S
)

# custom linker script
set(LINK_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/memmap_default.ld")
pico_set_linker_script(linker ${LINK_SCRIPT})

pico_enable_stdio_uart(linker 1)
pico_enable_stdio_usb(linker 1)

pico_add_extra_outputs(linker)

target_link_libraries(linker pico_stdlib)

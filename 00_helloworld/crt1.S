/*
 * Copyright (c) 2023 IotaHydrae (writeforever@foxmail.com)
 *  
 * SPDX-License-Identifier: MIT
 */

.global main
.thumb_func
main:
    bl    stdio_init_all

loop:
    ldr   r0, =hello
    bl    printf
    b     loop

.data
.align 4
hello:  .asciz  "Hello, world!\n"

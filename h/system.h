//
// Created by os on 5/3/23.
//

#ifndef NOVI_SYSTEM_H
#define NOVI_SYSTEM_H

#define ECALL __asm__ volatile("ecall");

#define MEM_ALLOC 0x01
#define MEM_FREE 0x02
#define YIELD 0x03

#define THREAD_CREATE 0x11
#define THREAD_EXIT 0x12
#define THREAD_DISPATCH 0x13
#define TCB_CREATE 0x14



#endif //NOVI_SYSTEM_H

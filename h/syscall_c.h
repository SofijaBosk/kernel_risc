//
// Created by os on 5/3/23.
//

#ifndef OS1_SYSCALL_C_H
#define OS1_SYSCALL_C_H

#include "../lib/hw.h"
#include "../h/tcb.hpp"

void* mem_alloc (size_t size);
int mem_free (void*);

class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);

int thread_exit ();

void thread_dispatch ();

const int EOF = -1;
char getc ();
void putc (char);

#endif //OS1_SYSCALL_C_H

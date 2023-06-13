//
// Created by os on 5/3/23.
//
#include "../h/syscall_c.h"
#include "../h/system.h"
#include "../lib/console.h"

//void* mem_alloc (size_t size)
//{
//    uint64 num = MEM_ALLOC;
//    void *addr;
//    size_t blkSize=size/MEM_BLOCK_SIZE;
//    if(size % MEM_BLOCK_SIZE != 0)
//    {
//        blkSize+= + 1;
//    }
//    __asm__ volatile("mv a1, %0" : : "r" (blkSize));
//    __asm__ volatile("mv a0, %[num]" : : [num] "r" (num));
//    //printInt(num);
//    ECALL
//
//    __asm__ volatile("mv %[res], a0" : [res] "=r" (addr));
//    return (char*)addr;
//}
//int mem_free (void*ptr)
//{
//    uint64 num = MEM_FREE;
//    int ret;
//
//    asm volatile("mv a1, %0" : : "r" (ptr));
//    asm volatile("mv a0, %[num]" : : [num] "r" (num));
//    ECALL
//    asm volatile("mv %[res], a0" : [res] "=r" (ret));
//
//    return ret;
//}

class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
)
{
    volatile uint64 code = (uint64) 0x11;
    volatile uint64 hand = (uint64) handle;
    volatile uint64 start = (uint64) start_routine;
    volatile uint64 a = (uint64) arg;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (hand));
    __asm__ volatile("mv a2, %0" : : "r" (start));
    __asm__ volatile("mv a3, %0" : : "r" (a));

    __asm__ volatile ("ecall");


    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int thread_exit (){
    uint64 arg0 = 0x12;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));

    __asm__ volatile ("ecall");

    return 0;
}


void thread_dispatch (){
    uint64 arg0 = 0x13;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));

    __asm__ volatile ("ecall");


}

char getc (){

//    uint64 arg0 = 0x41;
//
//    __asm__ volatile("mv a0, %0" : : "r" (arg0));
//
//    __asm__ volatile ("ecall");
//
//    char c;
//    __asm__ volatile("mv %0, a0" : "=r" (c));
//    return c;

    return __getc();

}

void putc (char c){
//    uint64 arg0 = 0x42;
//    volatile uint64 arg1 = (uint64)c;
//
//    __asm__ volatile("mv a0, %0" : : "r" (arg0));
//    __asm__ volatile("mv a1, %0" : : "r" (arg1));
//
//    __asm__ volatile ("ecall");
    __putc(c);
}
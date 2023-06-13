//
// Created by os on 5/3/23.
//

#include "../h/memory.h"
#include "../h/system.h"

void* mem_alloc(size_t size)
{
    uint64 num = MEM_ALLOC;
    void *addr;
    size_t blkSize=size/MEM_BLOCK_SIZE;
    if(size % MEM_BLOCK_SIZE != 0)
    {
        blkSize+= 1;
    }
    __asm__ volatile("mv a1, %0" : : "r" (blkSize));
    __asm__ volatile("mv a0, %[num]" : : [num] "r" (num));
    //printInt(num);
    ECALL

    __asm__ volatile("mv %[res], a0" : [res] "=r" (addr));
    return (char*)addr;
}

int mem_free(void* ptr)
{
    uint64 num = MEM_FREE;
    int ret;

    asm volatile("mv a1, %0" : : "r" (ptr));
    asm volatile("mv a0, %[num]" : : [num] "r" (num));
    ECALL
    asm volatile("mv %[res], a0" : [res] "=r" (ret));

    return ret;

}
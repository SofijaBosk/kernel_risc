//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../lib/mem.h"

TCB *TCB::running = nullptr;

//uint64 TCB::timeSliceCounter = 0;
uint64 TCB::id_static=0;

TCB *TCB::createThread(Body body,void *arg,uint64 *stack)
{
    return new TCB(body ,arg ,stack,TIME_SLICE);
}

void TCB::yield()
{
    //__asm__ volatile ("ecall");

    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    __asm__ volatile ("ecall");

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) {
        old->setStatus(Status::READY);
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    //Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}

using size_t = decltype(sizeof(0));


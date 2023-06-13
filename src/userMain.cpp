

#include "../test/Threads_C_API_test.hpp"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"


void userMain(void*)
{
//    printString("Ulazimo u kernel");
//   // Riscv::popSppSpie();
//    __asm__ volatile ("ecall");
//    printString("Izlazimo iz kernel");
//
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    __asm__ volatile ("ecall");
//
//    char c;
//    while((c=getc())!=0x31){
//        putc(c);
//    }

//    make user thread
    TCB* idle;
    thread_create(&idle, nullptr, nullptr);
    TCB::running=idle;
    Threads_C_API_test();

//    TCB *threads[5];
//
//    //idle thread
//    threads[0] = TCB::createThread(nullptr);
//    TCB::running = threads[0];
//
//    threads[1] = TCB::createThread(workerBodyA);
//    printString("ThreadA created\n");
//    threads[2] = TCB::createThread(workerBodyB);
//    printString("ThreadB created\n");
//    threads[3] = TCB::createThread(workerBodyC);
//    printString("ThreadC created\n");
//    threads[4] = TCB::createThread(workerBodyD);
//    printString("ThreadD created\n");
//
//    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//    while (!(threads[1]->isFinished() &&
//             threads[2]->isFinished() &&
//             threads[3]->isFinished() &&
//             threads[4]->isFinished()))
//    {
//        TCB::yield();
//    }
//
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }
//    printString("Finished\n");
}

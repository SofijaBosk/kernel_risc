//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

static uint32 firstIns=1;

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));

    if(scause == 0x8000000000000001){
        mc_sip(SIP_SSIP);
    }
    else if(firstIns!=0)
    {
        uint64 sepc = r_sepc();
        mc_sstatus(SSTATUS_SPP);
        firstIns=0;
        w_sepc(sepc + 4);
    }
    else if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        if(a0reg==0x11){
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();


            TCB::thread_t *arg1;
            TCB::Body arg2;
            uint64 arg3;


            __asm__ volatile("ld a1, 11*8(fp)"); //a1
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
            __asm__ volatile("ld a3, 13*8(fp)"); //a3


            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine

            //TO DO: alokacija steka
            //make new thread object using overloaded new operator for that function
            TCB* t = TCB::createThread(arg2,  (void*)arg3, nullptr);    //t je thread_t
            *arg1=t;

            uint64 ret;
            if(t!= nullptr)ret=0;
            else ret =-1;

            //return _thread* adress through a0
            __asm__ volatile("mv a0, %0" : : "r" (ret));

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if(a0reg==0x12){
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();

            TCB::running->finished=true;
            TCB::dispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);

        }
        else if(a0reg == 0x13){
            //thread dispatch
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();


            TCB::dispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);
        }


//        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
//        uint64 volatile sepc = r_sepc() + 4;
//        uint64 volatile sstatus = r_sstatus();
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
//        w_sstatus(sstatus);
//        w_sepc(sepc);
    }
//    else if (scause == 0x8000000000000001UL)
//    {
//        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
//        mc_sip(SIP_SSIP);
//        TCB::timeSliceCounter++;
//        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
//        {
//            uint64 volatile sepc = r_sepc();
//            uint64 volatile sstatus = r_sstatus();
//            TCB::timeSliceCounter = 0;
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
//    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        // unexpected trap cause
    }
}

void Riscv::handleTrapConsole() {
    uint64 scause = r_scause();
    if (scause == 0x8000000000000009UL) {
        console_handler();
        mc_sip(SIP_SEIP);
    } else if (scause == 0x8000000000000001UL) {
        mc_sip(SIP_SSIP);
    }

}
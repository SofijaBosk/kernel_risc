#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

// Thread Control Block
class TCB
{
public:
    ~TCB() { delete[] stack; } //TO DO allociraj prostor za stek

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    //uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*); //void* za argumente

    static TCB *createThread(Body body, void*arg,uint64 *stack);

    static void yield();

    static TCB *running;
    typedef TCB* thread_t;

    enum Status{NEW,READY};

    uint64 getID() {return id;}

    void setStatus(Status s){
        status=s;
    }
    Status getStatus(){
        return status;
    }
private:
    TCB(Body body,void *arg,uint64 *stack,uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            //timeSlice(timeSlice),
            finished(false),
            id(id_static++)
            //status(Status::NEW)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    //uint64 timeSlice;
    bool finished;
    void* arg;
    uint64 id; //daje se po stvaranju
    static uint64 id_static;
    Status status;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    //static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;


};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

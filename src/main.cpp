//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

extern void userMain(void*);

int main()
{
    userMain(nullptr);
    return 0;
}

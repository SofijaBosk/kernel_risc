//
// Created by os on 5/3/23.
//

#ifndef OS1_MEMORY_H
#define OS1_MEMORY_H

#include "../lib/hw.h"

void* mem_alloc (size_t size);

int mem_free (void*);

#endif //OS1_MEMORY_H

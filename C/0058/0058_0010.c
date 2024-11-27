

#include <stdlib.h>
#include <assert.h>
#include <stddef.h>

#define MULTI_TIMES         1024

void* parr[MULTI_TIMES] = {0};

void call_aligned_alloc(size_t align) {
    size_t i;
    for (i = 0; i < MULTI_TIMES; ++i) {
        parr[i] = aligned_alloc(align, i*align);
    }
    for (i = 0; i < MULTI_TIMES; ++i) {
        assert(parr[i] && (long long)parr[i] % align == 0);
        free(parr[i]);
    }
}

void call_aligned_alloc2() {
    void *p = 0;
    p = aligned_alloc(1024, 1024*1024L);
    p = aligned_alloc(1024, 1024*1024*1024L);
    p = aligned_alloc(1024, 1024*1024*1024*1024L);
}

void test() {
    call_aligned_alloc(1);
    call_aligned_alloc(2);
    call_aligned_alloc(4);
    call_aligned_alloc(8);
    call_aligned_alloc(16);
    call_aligned_alloc(32);
    call_aligned_alloc(64);
    call_aligned_alloc(128);
    call_aligned_alloc(256);
    call_aligned_alloc(512);
    call_aligned_alloc(1024);
    
    call_aligned_alloc2();
}

int main() {
    test();
}

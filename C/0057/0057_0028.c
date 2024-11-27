#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 

#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

#ifdef PTHREAD_THREADS_MAX 
#   define THREAD_NUM PTHREAD_THREADS_MAX / 10
#else
#   define THREAD_NUM 4
#endif

#define MAX_NUM 1000


#ifndef __STDC_NO_ATOMICS__
atomic_int x = ATOMIC_VAR_INIT(0);
atomic_int y = ATOMIC_VAR_INIT(0);
int r1, r2, r3, r4;

void* Ta(void *ptr) {
    atomic_store(&x, 1);
    pthread_exit(NULL);
}

void* Tb(void *ptr) {
    atomic_store(&y, 1);
    pthread_exit(NULL);
}

void* Tc(void *ptr) {
    r1 = atomic_load(&x);
    r2 = atomic_load(&y);
    pthread_exit(NULL);
}

void* Td(void *ptr) {
    r3 = atomic_load(&y);
    r4 = atomic_load(&x);
    pthread_exit(NULL);
}
#endif 

int main(int argc, char **argv) {
    int i = 0; 
    int j = 0;
    int status = 0;
    pthread_t pt[THREAD_NUM];
    
#ifndef __STDC_NO_ATOMICS__
    for (j = 0; j < MAX_NUM; ++j) {   
        atomic_store(&x, 0);
        atomic_store(&y, 0);
        pthread_create(&pt[0], NULL, Ta, NULL);
        pthread_create(&pt[1], NULL, Tb, NULL);
        pthread_create(&pt[2], NULL, Tc, NULL);
        pthread_create(&pt[3], NULL, Td, NULL);
        for (i = 0; i < THREAD_NUM; ++i) {
            status = pthread_join(pt[i], NULL);
            if (status)
                perror("error occurs: join failed");
        }
        if (r1 == 1 && r2 == 0 && r3 == 1 && r4 == 0)
            assert(0 && "error occured");
    }
#endif 

    return 0;
}

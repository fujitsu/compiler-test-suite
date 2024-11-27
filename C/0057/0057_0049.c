#include <pthread.h>
#include <assert.h>


void* fun(void *ptr) {
    static _Thread_local int x = 0;
    static int y = 0;
    if (*((int *)ptr) == 1)
        assert(x == 0 && y == 0);
    else 
        assert(x == 0 && y);
    ++x;
    ++y;
    pthread_exit(NULL);
}

int main(int argc, char **argv) {
    int x = 1;
    pthread_t pt[3];
    pthread_create(&pt[0], NULL, fun, &x);
    pthread_join(pt[0], NULL);
    
    x = 2;
    pthread_create(&pt[1], NULL, fun, &x);
    pthread_join(pt[1], NULL);
    
    x = 3;
    pthread_create(&pt[2], NULL, fun, &x);
    pthread_join(pt[2], NULL);

    return 0;
}


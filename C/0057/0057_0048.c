#include <pthread.h>
#include <assert.h>

_Thread_local int x = 0;
int y = 0;
void* fun(void *ptr) {
    x = 1;
    y = 1;
    pthread_exit(NULL);    
}

int main(int argc, char **argv) {
    pthread_t pt;
    pthread_create(&pt, NULL, fun, NULL);
    pthread_join(pt, NULL);
    
    assert(x == 0);
    assert(y == 1);
    return 0;
}


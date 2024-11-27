
#include <time.h>

#define TIMESPEC_TESTE() \
                      const  struct timespec ts ## _ ## c; \
                      volatile  struct timespec ts ## _ ## v; \
                      const volatile  struct timespec ts ## _ ## cv; \
                      const  struct timespec ts_arr ## _ ## c[2]; \
                      volatile  struct timespec ts_arr ## _ ## v[2]; \
                      const volatile  struct timespec ts_arr ## _ ## cv[2]; \
                      const  struct timespec ts_ptr ## _ ## c; \
                      volatile struct timespec ts_ptr ## _ ## v; \
                      const volatile struct timepsec *ts_ptr ## _ ## cv


TIMESPEC_TESTE();
void test() {
    TIMESPEC_TESTE();
}


int main(int argc, char **argv) {
    test();
    return 0;
}
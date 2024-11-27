

#include <time.h>
#include <assert.h>
void test() {
   struct timespec ts;
   int tag = timespec_get(&ts, TIME_UTC);
   assert(tag == TIME_UTC);
}

int main(int argc, char **argv) {
    test();
    return 0;
}

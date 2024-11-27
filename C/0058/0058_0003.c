

#include <time.h>
#include <assert.h>

void test() {
    struct timespec ts;
    ts.tv_sec = 0;
    ts.tv_nsec = 1;
    assert(ts.tv_sec == 0);
    assert(ts.tv_nsec == 1);
}

int main(int argc, char **argv) {
    test();
    return 0;
}

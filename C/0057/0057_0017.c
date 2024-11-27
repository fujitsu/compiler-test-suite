
void test() {
#ifndef __STDC_NO_ATOMICS__
    _Atomic volatile int *ptr = 0;
#endif 
}

int main(int argc, char *artv[]) {
    test();
    return 0;
}

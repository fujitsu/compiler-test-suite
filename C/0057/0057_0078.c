
#ifdef __STDC_NO_COMPLEX__
# ifdef __STDC_IEC_559_COMPLEX__
#  error __STDC_IEC_559_COMPLEX__ conflicts with __STDC_NO_COMPLEX__!
# endif
#endif

void test() {}

int main() {
    test();
}



#define CONCATENATE(str1, str2) str1##str2

#ifdef __STDC_NO_ATOMICS__

#define CV_TEST(type, name)  type name; \
                             const type CONCATENATE(name, _c); \
                             volatile type CONCATENATE(name, _v); \
                             const volatile type CONCATENATE(name, _cv)
#define ATOMIC_TEST(type, name) type name; \
                                const type CONCATENATE(name, _ca); \
                                volatile type CONCATENATE(name, _va); \
                                const volatile type CONCATENATE(name, _cva)
struct A {
    int m_a;
};

#else 

#define CV_TEST(type, name)  _Atomic type name; \
                             _Atomic const type CONCATENATE(name, _c); \
                             _Atomic volatile type CONCATENATE(name, _v); \
                             _Atomic const volatile type CONCATENATE(name, _cv)
#define ATOMIC_TEST(type, name) _Atomic _Atomic type name; \
                                _Atomic _Atomic const type CONCATENATE(name, _ca); \
                                _Atomic _Atomic volatile type CONCATENATE(name, _va); \
                                _Atomic _Atomic const volatile type CONCATENATE(name, _cva)
struct A {
    _Atomic int m_a;
};

#endif 

CV_TEST(_Bool, b_global);
CV_TEST(char, c_global);
CV_TEST(signed char, sc_global);

CV_TEST(short, s_global);
CV_TEST(int, i_global);
CV_TEST(long, l_global);
CV_TEST(long long, ll_global);

CV_TEST(unsigned char, uc_global);
CV_TEST(unsigned short, us_global);
CV_TEST(unsigned int, ui_global);
CV_TEST(unsigned long, ul_global);
CV_TEST(unsigned long long, ull_global);
CV_TEST(int *, ptr_global);
CV_TEST(struct A, a_global);

ATOMIC_TEST(int, atomic_global);

void test() {
    CV_TEST(_Bool, b_local);
    CV_TEST(char, c_local);
    CV_TEST(signed char, sc_local);

    CV_TEST(short, s_local);
    CV_TEST(int, i_local);
    CV_TEST(long, l_local);
    CV_TEST(long long, ll_local);

    CV_TEST(unsigned char, uc_local);
    CV_TEST(unsigned short, us_local);
    CV_TEST(unsigned int, ui_local);
    CV_TEST(unsigned long, ul_local);
    CV_TEST(unsigned long long, ull_local);
    CV_TEST(int *, ptr_local);
    CV_TEST(struct A, a_local);
    
    ATOMIC_TEST(_Bool, atomic_local);
}

int main(int argc, char *artv[]) {
    test();
    return 0;
}

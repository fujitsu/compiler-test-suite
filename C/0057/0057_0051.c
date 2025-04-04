
#define CONCATENATION(str1, str2, str3, str4) str1 ## str2 ## str3 ## str4
                        
#define THREAD_LOCAL_TEST(type, scope, name) \
        static _Thread_local type const CONCATENATION(s_, c_, name, scope); \
        static _Thread_local type volatile CONCATENATION(s_, v_, name, scope); \
        static _Thread_local type const volatile CONCATENATION(s_, cv_, name, scope); \
        extern _Thread_local type const CONCATENATION(e_, c_, name, scope); \
        extern _Thread_local type volatile CONCATENATION(e_, v_, name, scope); \
        extern _Thread_local type const volatile CONCATENATION(e_, cv_, name, scope); \
        static _Thread_local type volatile CONCATENATION(earr_, v_, name, scope)[2]; \
        extern _Thread_local type const volatile CONCATENATION(earr_, cv_, name, scope)[2];\
        static _Thread_local type const *CONCATENATION(eptr_, c_, name, scope)[2];\
        extern _Thread_local type const volatile *CONCATENATION(eptr_, cv_, name, scope)[2]

typedef struct X { int x; } X;

typedef union U {
    int x;
    float y; 
} U;
        
void test() {
    THREAD_LOCAL_TEST(_Bool, _block, _bool); 
    THREAD_LOCAL_TEST(char, _block, _char); 
    THREAD_LOCAL_TEST(signed char, _block, _schar); 
    THREAD_LOCAL_TEST(short, _block, _short); 
    THREAD_LOCAL_TEST(int, _block, _int); 
    THREAD_LOCAL_TEST(long, _block, _long); 
    THREAD_LOCAL_TEST(long long, _block, _llong); 
    THREAD_LOCAL_TEST(unsigned char, _block, _uchar); 
    THREAD_LOCAL_TEST(unsigned int, _block, _uint); 
    THREAD_LOCAL_TEST(unsigned long, _block, _ulong); 
    THREAD_LOCAL_TEST(unsigned long long, _block, _ullong); 
    
    THREAD_LOCAL_TEST(float _Complex, _block, _fcomplex); 
    THREAD_LOCAL_TEST(double _Complex, _block, _dcomplex); 
    THREAD_LOCAL_TEST(long double _Complex, _block, _ldcomplex); 
    
    THREAD_LOCAL_TEST(X, _block, _x); 
    THREAD_LOCAL_TEST(U, _block, _u); 
}

int main(int argc, char **argv) {
    test();
    return 0;
}

typedef struct _X X;

void test() {
#if !defined (__GNUC__)
    (void)_Alignof(X);    
#endif
}

int main() {
    test();
}

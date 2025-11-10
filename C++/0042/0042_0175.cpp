thread_local static int g_sx = 0;
thread_local extern int g_ex; 
thread_local extern int g_ex;


thread_local int g_x;

void test1() {
    thread_local static int l_sx = 0;
    thread_local extern int l_ex; 
    thread_local extern int l_ex;
    
    thread_local int l_x;
}


struct A {
    static int thread_local m_x;
};
int thread_local A::m_x;

void test2() {
    A a;
}

void test() {
    test1();
    test2();
}
int main(int argc, char *argv[]) {
    test();
    return 0;
}
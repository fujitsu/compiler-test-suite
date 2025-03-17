





#include <stdio.h>

int x;

void efunc() { printf("ok\n"); }
int ei = 5;
int main()
{
    int x;
    static int si = 3;
    enum EN { e0, e1 }en;
    extern int ei;
    extern void efunc();
    typedef int I;

    class A {
        public:
            I a;
            void f() { a = e0; }
            void g() { if( a == 0 ) ::x = si++; }
            void h() {
	        if( ei == 5 && ::x == 3 && si == 4 )
                    efunc();
                else
                    printf("ng\n");
            }
    };

    A obj;
    obj.f();
    obj.g();
    obj.h();
}

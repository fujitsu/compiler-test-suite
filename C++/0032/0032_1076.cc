template <class T> void f(T) { static int i=0; i++; if(i) return; else ::f(37); }

template <class T> void g(T=1) { static int i=0; i++; if(i) return; else g<char>(); }

template <class T> struct A {
        static A<int> a;
};
#include <stdio.h>
int main(void)
{
        f(83);
        g(21);
        A<char*>* ap;

        puts("ok");
}

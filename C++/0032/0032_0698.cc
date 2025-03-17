





#include <stdio.h>

int a1;
int func(int);
enum tag1 { en00, en01 };
int a2 = en01;

class A {
    public:
        int a1;
        int func(int i) { return ::a1 == i; }
        enum tag2 { en10=10, en11 };
};
int main()
{
    int a1;
    A aobj;
    
    a1 = ::en00;
    ::a1 = a1;
    a2 += aobj.func(0);
    if( ::func(::a2) == 22 )
        printf("ok\n");
    else
        printf("ng\n");
}

enum tag3 { en20=20, en21 } a3 = en20;

int func(int i)
{
  return ::a3 + i;
}

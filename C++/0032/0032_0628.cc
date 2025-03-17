





#include <stdio.h>

typedef int X;

class C {
  public:
    class X { public: int i; };
    X a,b;
};

X i=0;
int main()
{
    X i;
    C cobj;

    cobj.b.i = 1;
    cobj.a = cobj.b;
    i = cobj.a.i;
    ::i = i;

    if( ::i == 1 )
        printf("ok\n");
    else
        printf("ng\n");
}
    

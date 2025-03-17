





#include <stdio.h>

struct X {
    public:
        int i;
        static int si;
};

int X::si;

X gxobj1, gxobj2;
int main()
{
    X xobj1, xobj2;

    gxobj1.si = 1;
    gxobj2.si ++;
    xobj1.si *= 10;
    -- xobj2.si;

    if( X::si == 19 )
        printf("ok\n");
    else
        printf("ng\n");
}

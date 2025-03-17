





#include <stdio.h>

struct A {
    public:
        int i;
        static int si1,si2;
        static int sfunc();
};

 int A::sfunc()
{
    int i;

    i = si1 - si2;

    if ( i == 0 )
        return 0;
    else if( i > 0 )
        return si1;
    else
        return si2;
}

int A::si1;
int A::si2;
int main()
{
    int i1, i2;

    A::si1 = 10;
    A::si2 = 10;
    i1 = A::sfunc();
    A::si2 += 2;
    i2 = A::sfunc();
    A::si1 *= 2;

    if( i1 == 0 && i2 == 12 && A::sfunc() == 20 )
        printf("ok\n");
    else
        printf("ng\n");
}

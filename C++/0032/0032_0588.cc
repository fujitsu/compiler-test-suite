





#include <stdio.h>

struct CL {
    public:
        int        i1;
        int        i2;
        static int si1;
        static int si2;
        void       set1(int i) { i1 = i; si1 = i; }
        void       set2(int);
};

void CL::set2(int i)
{
    i2 = i;
    si2 = i;
}

int CL::si1;
int CL::si2;
int main()
{
    CL clobj;

    clobj.set1(10);
    clobj.set2(20);

    if( clobj.i1 == 10 && clobj.i2 == 20 &&
        clobj.si1 == 10 && clobj.si2 == 20 )
        printf("ok\n");
    else
        printf("ng\n");
}










#include <stdio.h>

class A {
    private:
        static int pri;
    protected:
        static int pro;
    public:
        static int pub;
        static void func();
};

int A::pri = 1;
int A::pro = 2;
int A::pub = 3;

 void A::func()
{
    pri += pro;
    pro++;
    pub--;

    if( pri == 3 && pro == 3 && pub == 12 )
        printf("ok\n");
    else
        printf("ng\n");
}
int main()
{
    A aobj;

    for( int i=0 ; i<10 ; i++ )
        aobj.pub++;

    aobj.func();
}

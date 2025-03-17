





#include <stdio.h>

class II {
    protected:
        int x;
    public:
        II(int i) { x = i; }
        virtual operator int() { return x*2; }
};

struct III {
    protected:
        int x;
    public:
        III(int i) { x = i; }
        virtual operator int() { return x*3; }
};

class A : public II { 
    public:
        A(int i):II(i) { }
        operator int() { return x*4; }
};

struct B : public III {
    public:
        B(int i):III(i) { }
        operator int () { return x*5; }
 };
int main()
{
    A aobj = A(10);
    B bobj(2);
    II  *p2 = &aobj;
    III *p3 = &bobj;

    int i = int(aobj);
    int j = (int)bobj;

    i += aobj;
    bobj ? j++ : i++;

    if( aobj == 40 && bobj == 10 && i == 80 && j == 11 &&
        *p2 == 40 && *p3 == 10 )
        printf("ok\n");
    else
        printf("ng\n");
}

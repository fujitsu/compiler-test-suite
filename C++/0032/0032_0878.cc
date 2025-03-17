





#include <stdio.h>

class II {
    private:
        int x;
    public:
        II(int i) { x = i; }
        operator int() { return x*2; }
};

struct III {
    private:
        int x;
    public:
        III(int i) { x = i; }
        operator int() { return x*3; }
};

class A : public II { 
    public:
        A(int i):II(i) { }
};

struct B : public III {
    public:
        B(int i):III(i) { }
 };
int main()
{
    A aobj = A(10);
    B bobj(2);

    int i = int(aobj);
    int j = (int)bobj;

    i += aobj;
    bobj ? j++ : i++;

    if( aobj == 20 && bobj == 6 && i == 40 && j == 7 )
        printf("ok\n");
    else
        printf("ng\n");
}

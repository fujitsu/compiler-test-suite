





#include <stdio.h>

int val = 5;

class X { 
    public:
        int x;
        X() { x = val; }
        X(int i) { x = i; }
};

class A : public X {
    public:
    int a;
    A(int i) { a = i; } 
    A(int i, int j) { a = i; x = j; }
};

struct Y { 
    public:
        int y;
        Y() { y = val; }
        Y(int i) { y = i; }
};

struct B : public Y {
    public:
    int b;
    B(int i) { b = i; } 
    B(int i, int j) { b = i; y = j; }
};
int main()
{
    A aobj1(3);
    A aobj2 = A(5,10);
    B bobj1(2);
    B bobj2 = B(2,8);

    if( aobj1.a == 3 && aobj1.x == 5 &&
        aobj2.a == 5 && aobj2.x == 10 &&
        bobj1.b == 2 && bobj1.y == 5 &&
        bobj2.b == 2 && bobj2.y == 8 )
        printf("ok\n");
    else
        printf("ng\n");
}

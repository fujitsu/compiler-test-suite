





#include <stdio.h>

class A {
    private:
        int a1,a2;
    public:
        A() { a1 = a2 = 0; }
        A(int i) { a1 = i; a2 = 0; }
        A(int i, int j) { a1 = i; a2 = j; }
        int f() { return a1 + a2; }
};

class B {
    private:
        int b1,b2;
    public:
        B(int i) { b1 = i; b2 = 0; }
        B(int i, int j) { b1 = i; b2 = j; }
        int f() { return b1 + b2; }
};
int main()
{
    int i = 0;
    A aarry1[5] = { 1, 2, 3, 4, 5 };
    A aarry2[5] = { A(), A(), A(), A(), A() };
    A aarry3[5] = { A(1), A(2), A(3), A(4), A(5) };
    A aarry4[5] = { A(1,1), A(1,2), A(2,1), A(2,2), A(0,0) };
    A aarry5[5] = { 1, A(), A(2), A(3,3) } ;
    A aarry6[5] = { 5 };
    A aarry7[5] = { A() };
    A aarry8[5] = { A(5) };
    A aarry9[5] = { A(5,5) };
    B barry1[5] = { 1, 2, 3, 4, 5 };
    B barry2[5] = { B(1), B(2), B(3), B(4), B(5) };
    B barry3[5] = { B(1,1), B(1,2), B(2,1), B(2,2), B(0,0) };

    if( aarry1[0].f() == 1 && aarry1[1].f() == 2 && aarry1[2].f() == 3 &&
        aarry1[3].f() == 4 && aarry1[4].f() == 5 )
        i++;

    if( aarry2[0].f() == 0 && aarry2[1].f() == 0 && aarry2[2].f() == 0 &&
        aarry2[3].f() == 0 && aarry2[4].f() == 0 )
        i++;

    if( aarry3[0].f() == 1 && aarry3[1].f() == 2 && aarry3[2].f() == 3 &&
        aarry3[3].f() == 4 && aarry3[4].f() == 5 )
        i++;

    if( aarry4[0].f() == 2 && aarry4[1].f() == 3 && aarry4[2].f() == 3 &&
        aarry4[3].f() == 4 && aarry4[4].f() == 0 )
        i++;

    if( aarry5[0].f() == 1 && aarry5[1].f() == 0 && aarry5[2].f() == 2 &&
        aarry5[3].f() == 6 && aarry5[4].f() == 0 )
        i++;

    if( aarry6[0].f() == 5 && aarry6[1].f() == 0 && aarry6[2].f() == 0 &&
        aarry6[3].f() == 0 && aarry6[4].f() == 0 )
        i++;

    if( aarry7[0].f() == 0 && aarry7[1].f() == 0 && aarry7[2].f() == 0 &&
        aarry7[3].f() == 0 && aarry7[4].f() == 0 )
        i++;

    if( aarry8[0].f() == 5 && aarry8[1].f() == 0 && aarry8[2].f() == 0 &&
        aarry8[3].f() == 0 && aarry8[4].f() == 0 )
        i++;
    
    if( aarry9[0].f() == 10 && aarry9[1].f() == 0 && aarry9[2].f() == 0 &&
        aarry9[3].f() == 0 && aarry9[4].f() == 0 )
        i++;
    
    if( barry1[0].f() == 1 && barry1[1].f() == 2 && barry1[2].f() == 3 &&
        barry1[3].f() == 4 && barry1[4].f() == 5 )
        i++;

    if( barry2[0].f() == 1 && barry2[1].f() == 2 && barry2[2].f() == 3 &&
        barry2[3].f() == 4 && barry2[4].f() == 5 )
        i++;

    if( barry3[0].f() == 2 && barry3[1].f() == 3 && barry3[2].f() == 3 &&
        barry3[3].f() == 4 && barry3[4].f() == 0 )
        i++;

    if( i == 12 )
        printf("ok\n");
    else
        printf("ng\n");
}


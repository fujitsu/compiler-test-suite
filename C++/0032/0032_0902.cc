





#include <stdio.h>

class A {
    public:
        static const int data1[8];
        static int data2[4];
};

const int A::data1[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
int A::data2[4] = { 2, 4, 6, 8 };

struct X {
    public:
        static const char data1[10];
        static char data2[5];
};

const char X::data1[10] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J' };
char X::data2[5] = { 'a', 'b', 'c', 'd', 'e' };

class B {
    public:
        int val[4];
        B(int i1=1,int i2=2,int i3=3,int i4=4) {
            val[0] = i1; val[1] = i2; val[2] = i3; val[3] = i4;
        }
};

struct Y {
    public:
        int val[4];
#ifdef __clang__
        Y(int i1=1,int i2=2,int i3=3,int i4=4) {
            val[0] = i1; val[1] = i2; val[2] = i3; val[3] = i4;
        }
#else
        Y(int,int,int,int);
#endif
};

#ifndef __clang__
Y::Y(int i1=1,int i2=2,int i3=3,int i4=4)
{
    val[0] = i1; val[1] = i2; val[2] = i3; val[3] = i4;
}
#endif

class C {
    public:
        const int c1;
        int c2;
        C(int i, int j) : c1(i), c2(j) { }
};

struct Z {
    public:
        const char z1;
        char z2;
        Z(char i, char j) : z1(i), z2(j) { }
};
int main()
{
    int i = 0;

    A aobj;
    B bobj1;
    B bobj2 = B(10,20,30,40);
    C cobj(5,10);

    X xobj;
    Y yobj1;
    Y yobj2(2,4,6,8);
    Z zobj = Z('1','6');

    if( aobj.data1[0] == 1 )
    {
        int j;
        for( j=0 ; j<8 && aobj.data1[j] == j+1 ; j++ ) ;
        if( j == 8 ) i++;
    }

    if( A::data1[0] == 1 )
    {
        int j;
        for( j=0 ; j<8 && A::data1[j] == j+1 ; j++ ) ;
        if( j == 8 ) i++;
    }

    if( aobj.data2[0] == 2 )
    {
        int j;
        for( j=0 ; j<4 && aobj.data2[j] == (j+1)*2 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( A::data2[0] == 2 )
    {
        int j;
        for( j=0 ; j<4 && A::data2[j] == (j+1)*2 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( bobj1.val[0] == 1 )
    {
        int j;
        for( j=0 ; j<4 && bobj1.val[j] == j+1 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( bobj2.val[0] == 10 )
    {
        int j;
        for( j=0 ; j<4 && bobj2.val[j] == (j+1)*10 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( cobj.c1 == 5 && cobj.c2 == 10 ) i++;

    if( xobj.data1[0] == 'A' )
    {
        int j;
        for( j=1 ; j<10 && xobj.data1[j] == xobj.data1[j-1]+1 ; j++ ) ;
        if( j == 10 ) i++;
    }

    if( X::data1[0] == 'A' )
    {
        int j;
        for( j=1 ; j<10 && X::data1[j] == X::data1[j-1]+1 ; j++ ) ;
        if( j == 10 ) i++;
    }

    if( xobj.data2[0] == 'a' )
    {
        int j;
        for( j=1 ; j<5 && xobj.data2[j] == xobj.data2[j-1]+1 ; j++ ) ;
        if( j == 5 ) i++;
    }

    if( X::data2[0] == 'a' )
    {
        int j;
        for( j=1 ; j<5 && X::data2[j] == X::data2[j-1]+1 ; j++ ) ;
        if( j == 5 ) i++;
    }

     if( yobj1.val[0] == 1 )
    {
        int j;
        for( j=0 ; j<4 && yobj1.val[j] == j+1 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( yobj2.val[0] == 2 )
    {
        int j;
        for( j=0 ; j<4 && yobj2.val[j] == (j+1)*2 ; j++ ) ;
        if( j == 4 ) i++;
    }

    if( zobj.z1 == '1' && zobj.z2 == '6' ) i++;

    if( i == 14 )
        printf("ok\n");
    else
        printf("ng\n");
}

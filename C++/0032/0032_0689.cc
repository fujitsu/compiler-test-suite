





#include <stdio.h>

struct A {
    public:
        int a,b;
        A() { a = b = 0; }
        void set(int i, int j) { a = i; b = j; }
        virtual int add(A *, int);
};

int A::add(A *aobj, int i)
{
    return aobj->a += i;
}

struct B : public A {
    public:
        B() { }
        void set(int i, int j) { a = i + j; b = ( i>j ? i-j : j-i ); }
        int add(A *, int);
        int func(int,int,int);
};

int B::add(A *aobj, int i)
{
    return aobj->b += i ;
}

int B::func(int i, int j, int k)
{
    set( i, j );
    return add( this, k );
}

struct X {
    public:
        int x,y;
        A aobj;
        X() { x = y = 0; }
        friend int A::add(A *, int);
};
int main()
{
    B bobj;
    A *pa = &bobj;
    X xobj;

    pa->set( 3, 5 );
    if( pa->add( pa, 2 ) == 7 )
    {
        if( bobj.func( 8, 4, 2 ) == 6 )
	{
            xobj.aobj.set( 2, 3 );
            xobj.aobj.A::add( &xobj.aobj, 2 );
            if( xobj.aobj.a == 4 )
                printf("ok\n");
            else
                printf("ng\n");
	}
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}
    

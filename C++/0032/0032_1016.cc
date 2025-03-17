

#include <stdio.h>
int main()
{
	class B { public: int bi; };
	class X { public: int bi; };
	class C : public B { int ci; };
	class Y : public X { int ci; };
	class D : public C, public Y { int di; };
	D d;
	D &dr = d;
	Y &yr = dr;

	if( &yr.bi == &dr.X::bi)
            printf("ok\n");
        else
            printf(" &yr.bi    : %d \n &dr.X::bi : %d \n",
                     &yr.bi, &dr.X::bi);
}


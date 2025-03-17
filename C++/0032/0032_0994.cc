#include <stdio.h>
int main()
{
	class B { public: int bi; };
	class C : virtual public B { int ci; };
	class Y : virtual public B { int ci; };
	class D : public C, public Y { int di; };
	D d;
	D &dr = d;
	B &br = dr;

	if( &br.bi == &dr.bi)
            printf("ok\n");
        else
            printf(" &br.bi : %d \n &dr.bi : %d \n", &br.bi, &dr.bi);    
}

#include <stdio.h>
int main()
{
	class B { public: int bi; };
	class X { public: int bi; };
	class C : public B { int ci; };
	class Y : public X { int ci; };
	class D : public C, public Y { int di; };
	D d;
	Y *yp = &d;
	int D::*dpm;
	int Y::*ypm = &X::bi;
	dpm = ypm;

	if( &(yp->*ypm) == &(d.*dpm) )
            printf("ok\n");
        else
            printf(" &(yp->*ypm) : %d \n &(d.*dpm)   : %d \n",
	             &(yp->*ypm), &(d.*dpm));
}

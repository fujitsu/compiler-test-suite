

#include <stdio.h>
int main()
{
	class B { public: int bi; };
	class X { public: int bi; };
	class C : public B { int ci; };
	class Y : public X { int ci; };
	class D : public C, public Y { int di; };

	int D::*dpm;
 	int Y::*ypm = &X::bi;
	dpm = ypm;
	if( ypm == dpm )
            printf("ok\n");
        else
            printf("ng ypm : %d  dpm : %d \n", ypm, dpm);
}

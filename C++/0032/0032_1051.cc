#include <stdio.h>

struct X_124p22 {
	int i;
	X_124p22(int ii) : i(ii) { }
	~X_124p22() { i = 0; }
};
int main()
{
	struct Z {
		X_124p22 x;
		Z(int ii) : x(ii) { }
	};

	Z z(9);
	z.~Z();
	if( z.x.i == 0 ) printf("ok\n");
            else printf("ng z.x.i : %d \n", z.x.i);
}

#include <stdio.h>
int main()
{
	const class X716p1_10 {
	public:
		int i;
		X716p1_10(int ii) : i(ii) { };
	} x(10);

	const class Y716p1_10 {
	public:
		const X716p1_10 x;
		const int j;
		Y716p1_10(int jj) : x(jj + 1), j(jj + 2) { };
	} y(110);

	if (y.x.i == 111 && y.j == 112)
	  printf("ok\n");
	else
	  printf("ng\n");
}



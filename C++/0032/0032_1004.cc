#include <stdio.h>

struct A {
	int i;
	A(int ii = 2) : i(ii) { }
};

int main()
{
	A a[3];
	if (a[2].i == 2)
		printf("ok\n");
        else
		printf("ng a[2].i : %d \n", a[2].i);
}





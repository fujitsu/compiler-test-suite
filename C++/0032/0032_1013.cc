struct A_1232p13a {
	int i, j;
	A_1232p13a(int ii, int jj) : i(ii), j(jj) { }
};

struct X_1232p13a {
	int i;
	X_1232p13a(int ii) : i(ii) { }
	operator :: A_1232p13a() { return A_1232p13a(i, 3 * i); }
};

#include <stdio.h>
int main()
{
	X_1232p13a x = 1;
	A_1232p13a a = x;

        puts("ok");
}

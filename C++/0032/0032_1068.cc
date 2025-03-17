#include <stdio.h>

int g_132p83a(const int &r, int i) { return r + 5 * i; }
int main()
{
	struct X_132p83a {
		int i;
		X_132p83a(int ii) : i(ii) { }
		operator int () const volatile { return i; }
	};

	X_132p83a x(4);

	if( g_132p83a(x, 2) == 14 ) printf("ok\n");
}

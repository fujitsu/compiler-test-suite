#include <stdio.h>

struct A_121p53a {
	static int m;
	int i;
	A_121p53a() : i(12) { }
	A_121p53a(const A_121p53a &x, int n = 1) : i(x.i + n) { ++m; }
};

int A_121p53a::m = 0;

A_121p53a f_121p53a(A_121p53a a)
{
	A_121p53a b(a, 2);
	return b;
}
int main()
{
        int count = 0;
	A_121p53a a1;
	A_121p53a a2 = f_121p53a(a1);

	if( A_121p53a::m >= 3 && A_121p53a::m <= 4 ) count++;
            else printf("ng A_121p53a::m : %d \n", A_121p53a::m);
	if( a2.i >= 16 && a2.i <= 17) count++;
            else printf("ng a2.i : %d \n", a2.i);

        if( count == 2 ) printf("ok\n");
}

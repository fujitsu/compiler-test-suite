#include <stdio.h>

struct X_132p21 {
	int i;
	X_132p21(int ii) : i(ii) { }
};

struct Y_132p21 {
	int i;
	Y_132p21(int ii) : i(ii) { }
	operator double() { return i; }
};

int f_132p21() { return 0; }
int f_132p21(double d) { return (int)d; }
int f_132p21(int i, X_132p21 x) { return i + x.i; }
int f_132p21(int i = 3, Y_132p21 y = 4, int j = 5) { return i + y.i + j; }
int main()
{
        int count = 0;
	X_132p21 x(2);
	Y_132p21 y(5);

	if( f_132p21(1) == 10 ) count++;
        else printf("f_132p21(1) : %d \n", f_132p21(1) );

	if( f_132p21(y) == 5 ) count++;
        else printf("f_132p21(y) : %d \n", f_132p21(y) );

        if( count == 2 ) printf("ok\n");
}

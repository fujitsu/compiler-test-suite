#include <stdio.h>

struct A_124p23 {
	static int dtor;
	int i;
	A_124p23(int ii) : i(ii) { }
	~A_124p23() { i = 0; ++dtor; }
};

int A_124p23::dtor = 0;

struct B_124p23 {
	static int dtor;
	int i;
	B_124p23(int ii) : i(ii) { }
	~B_124p23() { i = 0; ++dtor; }
};

int B_124p23::dtor = 0;
int main()
{
        int count = 0;
	struct X : A_124p23 {
		B_124p23 b;
		X(int ii) : A_124p23(ii), b(ii) { }
	};

	X x(23);
	x.X::~X();

	if( x.i == 0 ) count++;
            else printf("ng x.i : %d \n", x.i);
	if( x.b.i == 0 ) count++;
            else printf("ng x.b.i : %d \n", x.b.i);
	if( A_124p23::dtor == 1 ) count++;
            else printf("ng A_124p23::dtor : %d \n", A_124p23::dtor);
	if( B_124p23::dtor == 1 ) count++;
            else printf("ng B_124p23::dtor : %d \n", B_124p23::dtor);

        if( count == 4 ) printf("ok\n");
}



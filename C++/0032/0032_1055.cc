#include <stdio.h>

struct A_1232p13b {
	struct B_1232p13b {
		int i, j;
		B_1232p13b(int ii, int jj) : i(ii), j(jj) { }
	};
};

struct X_1232p13b {
	int i;
	X_1232p13b(int ii) : i(ii) { }
	operator int A_1232p13b::B_1232p13b::*()
	{
		return (i & 1) ?
		&::A_1232p13b::B_1232p13b::i : &::A_1232p13b::B_1232p13b::j;
	}
	operator const int &() { return i; }
};
int main()
{
        int count = 0;
	A_1232p13b::B_1232p13b ab (12, 32);
	X_1232p13b x = 1;
	if( ab.*(int A_1232p13b::B_1232p13b::*)x == 12 ) count++;
	x = 2;
	if( ab.*(int A_1232p13b::B_1232p13b::*)x == 32 ) count++;

	if( count == 2 ) printf("ok\n");
        else printf("ng\n");
}

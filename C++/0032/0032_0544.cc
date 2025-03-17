#include <stdio.h>

class omni {
public:
	int i;
	short a[4];
	short &r1;
	operator int() const { return i; };
	omni() : r1(a[1]) { i = 1; }
	omni(int ii) : r1(a[1]) { i = ii; }
};

omni f522p31a(int n = 2, char c = '\02', int i = 4, long L = 6)
{
	if (n == 1)
		return c;
	if (n == 2)
		return i;
	if (n == 3)
		return (int)L;
	return n;
}
int main()
{
        int count = 0;
	if( 4 == f522p31a()) count++;
	if( 6 == f522p31a(3)) count++;
	if( 5 == f522p31a(1, 5)) count++;
	if( 4 == f522p31a(2, 7)) count++;

        if( count == 4 ) printf("ok\n");
        else printf("ng\n");
}

#include <stdio.h>

class rational {
public:
	int x, y;
	rational(int i, int j) {x = i; y = j;};
	rational operator +(int i) const { return rational(x + i * y, y); };
	operator int() const { return x / y; }
};

class omni {
public:
	int i;
	short a[4];
	short &r1;
	rational xy;
	operator int() const { return i; };
	operator rational() { return xy; };
	omni(int ii) : r1(a[1]), xy(1, ii) { i = ii; }
};

int operator +(omni o, char c) { return o.i + c - 1; }
int main()
{
	if( ::operator+(omni(2), '0') == '1' )
            printf("ok\n");
        else
            printf("ng\n");
}

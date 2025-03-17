#include <stdio.h>

class omni {
public:
	int i;
	operator int() const { return i; };
	omni() : i(1) { }
	omni(int ii) : i(ii) { }
	~omni() { }
};

class over {
public:
	int i;
	over *po;
	over * operator -> () {
		if (po == 0) { po = this; ++i; }
		return this;
		};
	over * operator &  () { --i; return this; };
	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; po = 0; }
	over(int ii) { i = ii; po = 0; }
};

int f522p31b(int n = 2, omni om = 5, over ov = 10)
{
	if (n == 1)
		return om.i;
	if (n == 2)
		return ov.i;
	return n;
}
int main()
{
        int count = 0;

	if( 10 == f522p31b() ) count++;
	if( 3 == f522p31b(3) ) count++;
	if( 5 == f522p31b(1) ) count++;
	if( 10 == f522p31b(2, -2) ) count++;

        if( count == 4 ) printf("ok\n");
        else printf("ng\n");
}

#include <stdio.h>

class B_1344p14 {
public:
	int i;
	virtual void operator() (int i1, int i2);
	virtual void operator() (int i1, int i2, int i3) { i += i1+i2+i3; }
	B_1344p14(int j) : i(j) { };
};

void B_1344p14::operator() (int i1, int i2) { i += i1+i2; }

class D_1344p14 : public B_1344p14 {
public:
	D_1344p14(int j) : B_1344p14(j) { };
};

void (D_1344p14::*pmf2_1344p14)(int, int) = &D_1344p14::operator();
void (D_1344p14::*pmf3_1344p14)(int, int, int) = &D_1344p14::operator();
int main()
{
	D_1344p14 a (1);             

	a(2, 3);                     
	a(4, 5, 6);                  
	(a.*pmf2_1344p14)(7, 8);     
	(a.*pmf3_1344p14)(9, 10, 11);

	if( a.i == 66 ) printf("ok\n");
}

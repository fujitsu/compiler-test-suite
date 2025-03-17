#include <stdio.h>

class B_1345p13 {
public:
	int i;
	virtual void operator[] (int i1);
	virtual void operator[] (double d) { i += (int)d + 3; }
	B_1345p13(int j) : i(j) { };
};

void B_1345p13::operator[] (int i1) { i += i1 + 2; }

class D_1345p13 : public B_1345p13 {
public:
	D_1345p13(int j) : B_1345p13(j) { };
};

void (D_1345p13::*pmf2_1345p13)(int) = &D_1345p13::operator[];
void (D_1345p13::*pmf3_1345p13)(double) = &D_1345p13::operator[];
int main()
{
	D_1345p13 a (1);                

	a[2];                           
	a[4.];                          
	(a.*pmf2_1345p13)( 7 );         
	(a.*pmf3_1345p13)( (int)9 );

	if( a.i == 33 ) printf("ok\n");
}

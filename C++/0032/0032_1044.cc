#include <stdio.h>

class over {
public:
	int i;
	over *po;
	over * operator &  () {
		--i;
		return this;
		};
	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; po = 0; }
	over(int ii) { i = ii; po = 0; }
	over   operator () () { return over( (i * 4) + 1 ); };
	over   operator () (const over &b1, const over &b2)
		{ return over( (i * b1.i) + b2.i ); };
};
int main()
{
	if( over(2)(3, 4).i == 10 ) printf("ok\n");
        else printf("ng over(2)(3,4).i : %d \n",over(2)(3,4).i);
}

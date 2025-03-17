#include <stdio.h>

class over {
public:
	int i;
	double d;
	over *po;
	over * operator &  () { --i, --d; return this; };
	operator double() { return d + i; };
	over() { d = i = 1; po = 0; }
	over(int ii) { d = i = ii; po = 0; }
	over   operator () () { return over( (i * 4) + 1 ); };
	over   operator () (const over &b1, const over &b2)
		{ return over( (i * b1.i) + b2.i ); };
};

int chk( double d, double i )
{
    if( d == i ) return 0;
    return d;
}
int main()
{
        int count = 0;
	over (over::*pf1)() = &over::operator();
	over (over::*pf2)(const over &, const over&) = &over::operator();
	over a (2), b (3);
	if( !chk( (a.*pf1)(), 18) )         
            count++;
        else printf("ng (a.*pf1)() : %d \n", chk((a.*pf1)(),18) );
	if( !chk( (a.*pf2)(a, b), 14) )   
            count++;
        else printf("ng (a.*pf2)(a,b) : %d \n", chk((a.*pf2)(a,b),14) );

        if( count == 2 ) printf("ok\n");
}

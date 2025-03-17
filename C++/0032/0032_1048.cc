#include <stdio.h>

class over {
public:
	int i;

	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; }
	over(int ii) { i = ii; }
	over   operator *  ()        { return over( - i - 1 ); };
	over   operator +  ()        { return over( - i + 2 ); };
	over   operator *  (const over &b) { return over( (i *  b.i) + 2 );};
	over   operator +  (const over &b) { return over( (i +  b.i) + 2 );};
};


class over_134p61b : public over { 
public:
	over_134p61b(int i) : over(i) { };
};

int operator + (over_134p61b s) { return ( (s.i) + 5 ); };
int operator + (over_134p61b s, int b) { return ( (s.i + b) + 7 ); };
int operator * (int b, over_134p61b s) { return ( (s.i + b) + 9 ); };
int main()
{
	over_134p61b a (1);
	int b = 2, count = 0;

	if( ( +a ) == 6 ) count++;
	    else printf("+a : %d \n", +a );

	if( ( a + b ) == 10 ) count++;
	    else printf("a+b : %d \n", a+b );

	if( ( b * a ) == 12 ) count++;
	    else printf("b*a : %d \n", b*a );

        if( count == 3 ) printf("ok\n");
}

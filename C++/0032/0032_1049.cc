#include <stdio.h>

class over {
public:
	int i;

	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; }
	over(int ii) { i = ii; }
};

class over_134p72 : public over {
public:
	over_134p72(int i) : over(i) { };
};

int operator += (int j, over_134p72 s) { return ( s.i + j );};
int main()
{
	over_134p72 a (1);

	if( (1 += a) == 2 ) printf("ok\n");
            else printf("ng 1+=a : %d \n", 1+=a);
}

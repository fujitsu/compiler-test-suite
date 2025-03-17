#include <stdio.h>

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
	over   operator () () { return over( (i * 4) + 1 ); };
	over   operator () (const over &b1, const over &b2)
		{ return over( (i * b1.i) + b2.i ); };
	over   operator !  ()        { return over( - i + 3 ); };
};
int main()
{
        int count = 0;
	over a(3), b(4);
	over c = *a(b, 1)->po;
	if( (!c).i == -11)	
            count++;
        else printf("ng (!c).i : %d \n", (!c).i );
	if( (!*a(b, 1)->po).i == -11)	
            count++;
        else printf("ng (!*a(b,1)->po).i : %d \n", (!*a(b,1)->po).i );

        if( count == 2 ) printf("ok\n");
}


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
	over   operator [] (const over &b) { return over( (i * 3) + b.i ); };
};
int main()
{
	over a(3), b(4);
	(&a)->i == 2;    		
	if( (&a[b])->i == 9)	        
            printf("ok\n");
        else printf("(&a[b])->i : %d \n", (&a[b])->i);
}

#include  <stdio.h>
#include "000.src"

void pppp( a,b,c )
long_double *a, *b, *c;
{
	printf("\ta  s=%d e=%4x f=%8x,%8x\n",a->s,a->e,a->f.high,a->f.low);
	printf("\tb  s=%d e=%4x f=%8x,%8x\n",b->s,b->e,b->f.high,b->f.low);
	printf("\tc  s=%d e=%4x f=%8x,%8x\n",c->s,c->e,c->f.high,c->f.low);
}
long_double a,b,c;

void test_call(int no1,int no2) 
{
	b_xdiv(&a,&b,&c);
	pppp(&a,&b,&c);

	b_xadd(&a,&b,&c);
	printf("add\n");
	pppp(&a,&b,&c);
}

#define b_test_1(x) \
	\
	b.s=1; b.e=1; b.f.high=0x80000000; b.f.low=0;\
	test_call(x,5);
int main(){


printf("caka0005 start\n");

memset(&a,0,sizeof(a));
memset(&b,0,sizeof(a));

a.s=0; a.e=1; a.f.high=0x80000000; a.f.low=0;
b_test_1(7);

}

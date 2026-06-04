#include  <stdio.h>
#include "001.src"

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
	printf("no.%d-%d \n",no1,no2);
	b_xmul(&a,&b,&c);
	printf("mul\n");
	pppp(&a,&b,&c);
	b_xdiv(&a,&b,&c);
	printf("div\n");
	pppp(&a,&b,&c);
	b_xadd(&a,&b,&c);
	printf("add\n");
	pppp(&a,&b,&c);
	b_xsub(&a,&b,&c);
	printf("sub\n");
	pppp(&a,&b,&c);
}
#define b_test_1(x) \
	\
	memset(&b,0,sizeof(b));\
	test_call(x,1);\
	\
	b.e=32767;\
	test_call(x,1);\
	\
	b.s=1; b.e=32767;\
	test_call(x,2);\
	\
	b.s=1; b.e=32767; b.f.low=1;\
	test_call(x,3);\
	\
	b.s=1; b.e=32767; b.f.high=1; b.f.low=0;\
	test_call(x,4);\
	\
	b.s=1; b.e=1; b.f.high=0x80000000; b.f.low=0;\
	test_call(x,5);

#define b_test_2(x) \
	\
	b.s=1; b.e=32766; b.f.high=0x80000000; b.f.low=0;\
	test_call(x,6);\
	\
	b.s=1; b.e=1; b.f.high=0x80000000; b.f.low=1;\
	test_call(x,7);\
	\
	b.s=1; b.e=32766; b.f.high=0x80000000; b.f.low=1;\
	test_call(x,8);\
	\
	b.s=1; b.e=16384; b.f.high=0x80000000; b.f.low=1;\
	test_call(x,9);\
	\
	b.s=1; b.e=16384; b.f.high=0xffffffff; b.f.low=0;\
	test_call(x,10);\
	\
	b.s=1; b.e=16384; b.f.high=0x80000000; b.f.low=0xffffffff;\
	test_call(x,11);\
	\
	b.s=1; b.e=16384; b.f.high=0xffffffff; b.f.low=0xffffffff;\
	test_call(x,12);
int main(){


printf("caka0005 start\n");

memset(&a,0,sizeof(a));
memset(&b,0,sizeof(a));


test_call(1,1);

a.s=1;
test_call(1,2);
a.s=0;

b.s=1;
test_call(1,3);
b.s=0;

a.s=1;
b.s=1;
test_call(1,4);
a.s=0;
b.s=0;

b_test_1(2);

a.e=32767;
b_test_1(3);

a.s=1; a.e=32767;
b_test_1(4);

a.s=1; a.e=32767; a.f.low=1;
b_test_1(5);

a.s=1; a.e=32767; a.f.high=1; a.f.low=0;
b_test_1(6);

a.s=0; a.e=1; a.f.high=0x80000000; a.f.low=0;
b_test_1(7);

a.s=0; a.e=1; a.f.high=0x80000000; a.f.low=0;
b_test_2(8);

a.s=0; a.e=1; a.f.high=0x80000000; a.f.low=1;
b_test_2(9);

a.s=0; a.e=10; a.f.high=0x80000000; a.f.low=0;
b_test_2(10);

a.s=0; a.e=10; a.f.high=0x80000000; a.f.low=1;
b_test_2(11);

a.s=0; a.e=16384; a.f.high=0x80000000; a.f.low=1;
b_test_2(12);

a.s=0; a.e=16384; a.f.high=0xffffffff; a.f.low=0;
b_test_2(13);

a.s=0; a.e=16384; a.f.high=0x80000000; a.f.low=0xffffffff;
b_test_2(14);

a.s=0; a.e=16384; a.f.high=0xffffffff; a.f.low=0xffffffff;
b_test_2(15);

a.s=0; a.e=32766; a.f.high=0xffffffff; a.f.low=0xffffffff;
b.s=0; b.e=32766; b.f.high=0x80000000; b.f.low=0x00000001;
test_call(16,1);

a.s=1; a.e=32766; a.f.high=0xffffffff; a.f.low=0xffffffff;
b.s=0; b.e=32766; b.f.high=0x80000000; b.f.low=0x00000001;
test_call(16,2);

a.s=0; a.e=1; a.f.high=0xffffffff; a.f.low=0xffffffff;
b.s=0; b.e=1; b.f.high=0xffffffff; b.f.low=0x00000001;
test_call(16,3);
}

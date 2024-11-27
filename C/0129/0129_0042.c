#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
typedef struct b {
	unsigned	a01:1;
	float		j;
	unsigned	a02:1;
	double		k;
	unsigned	a03:1;
	char		l;
	unsigned	a04:1;
	short		m;
	unsigned	a05:1;
	unsigned	a06:1;
	int		o;
	unsigned	a07:1;
	unsigned	a08:1;
	long		p;
	unsigned	a09:1;
	}BIT;
int skip1(unsigned i);
int skip0(unsigned i);
int onskip2(BIT *a);
int onskip1(BIT *a);
int test2(BIT a);
int test1(BIT a);
int main()
{
	BIT a[10];
	int i;
	for(i=0;i<10;i++,i++)
	{
		a[i].a01=0;
		a[i].a02=1;
		a[i].a03=0;
		a[i].a04=1;
		a[i].a05=0;
		a[i].a06=1;
		a[i].a07=0;
		a[i].a08=1;
		a[i].a09=0;
	}
	for(i=1;i<10;i++,i++)
	{
		a[i].a01=1;
		a[i].a02=0;
		a[i].a03=1;
		a[i].a04=0;
		a[i].a05=1;
		a[i].a06=0;
		a[i].a07=1;
		a[i].a08=0;
		a[i].a09=1;
	}
	for(i=0;i<10;i++,i++)
		test1(a[i]);
	for(i=1;i<10;i++,i++)
		test2(a[i]);
exit (0);
}

int test1(a)
BIT a;
{
	int test;
	test=onskip1(&a);
	if(test)
		printf("ng :%d\n",test);
	else
		printf("ok\n");
	return 0;
}

int onskip1(a)
BIT *a;
{
	int test = 0;
	test+=skip1(a->a01);
	test+=skip0(a->a02);
	test+=skip1(a->a03);
	test+=skip0(a->a04);
	test+=skip1(a->a05);
	test+=skip0(a->a06);
	test+=skip1(a->a07);
	test+=skip0(a->a08);
	test+=skip1(a->a09);
	return test;
}
int skip1(i)
unsigned i;
{
	if(i==1)
		return 1;
	else
		return 0;
}

int test2(a)
BIT a;
{
	int test;
	test=onskip2(&a);
	if(test)
		printf("ng :%d\n",test);
	else
		printf("ok\n");
	return 0;
}

int onskip2(a)
BIT *a;
{
	int test = 0;
	test += skip0(a->a01);
	test += skip1(a->a02);
	test += skip0(a->a03);
	test += skip1(a->a04);
	test += skip0(a->a05);
	test += skip1(a->a06);
	test += skip0(a->a07);
	test += skip1(a->a08);
	test += skip0(a->a09);
	return test;
}

int skip0(i)
unsigned i;
{
	if(i==0)
		return 1;
	else
		return 0;
}

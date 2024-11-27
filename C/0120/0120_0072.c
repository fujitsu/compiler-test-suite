#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int a,b,c,d,e,f,g;
	int *tbl [7];
	int i;
	int *ptr;
	a=123;
	tbl[0] = &a;
	b=234;
	tbl[1] = &b;
	c=345;
	tbl[2] = &c;
	d=456;
	tbl[3] = &d;
	e=567;
	tbl[4] = &e;
	f=678;
	tbl[5] = &f;
	g=789;
	tbl[6] = &g;
	for(i=0 ; i<7 ; i+=1)
	{
		ptr=tbl[i];
		printf("%d\n",*ptr);
	}
	exit (0);
}

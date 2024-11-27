#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int a,b,c,d,e,f,g;
static int *data[7] = {
	       &a,&b,&c,&d,&e,&f,&g};
int main()
{
	int i;
	a=123;
	b=234;
	c=345;
	d=456;
	e=567;
	f=678;
	g=789;
	for (i=0;i<7;i++)
		printf("%d\n",*data[i]);
	exit (0);
}

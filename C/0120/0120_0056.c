#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int sub1 (int *a,int *b,int *c);
int main()
{
	int a,b,c;
	a=1;
	b=2;
	c=3;
	printf("main a=%d b=%d c=%d\n",a,b,c);
	sub1(&a,&b,&c);
	sub1(&a,&b,&c);
	printf("main a=%d b=%d c=%d\n",a,b,c);
	exit (0);
}
int sub1 (int *a,int *b,int *c)
{
	*a=*a+1;
	*b=*b+2;
	*c=*c+3;
	printf("sub1 a=%d b=%d c=%d\n",*a,*b,*c);
	return 0;
}

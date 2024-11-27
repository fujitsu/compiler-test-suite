#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int sub1();
int main()
{
	int a,b,c;
	a = 1;
	b = 2;
	c = 3;
	printf("main a=%d b=%d c=%d\n",a,b,c);
	sub1();
	printf("main a=%d b=%d c=%d\n",a,b,c);
	exit (0);
}
int sub1()
{         
	int a;
	a=11;
	printf("sub1 a=%d\n",a);
	return 0;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}x;
int sub(struct data *xx);
int main()
{
	int i;
	struct data x;
	sub(&x);
	for(i=0;i<10;i++)
	{
		printf(" %ld \n",x.a[i]);
	}
	exit (0);
}
int sub(xx)
struct data *xx;
{
	int i;
	for(i=0;i<10;i++)
	{
		xx->a[i]=i+1;
	}
}

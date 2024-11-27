#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
};
int sub(struct data *xx);
int main()
{
	int i;
	struct data x;
	sub(&x);
	for(i=0;i<10;i++)
	{
		printf(" *** a[%d] = %ld ***\n",i,x.a[i]);
	}
	exit (0);
}
int sub(xx)
struct data *xx;
{
	int i,j;
	for(i=0;i<10;i++)
	{
		xx->a[i]=i+1;
	}
	i=0;
	for(j=xx->a[i];j<=10;j++)
	{
		xx->a[i]=xx->a[i]+1;
		i++;
	}
}

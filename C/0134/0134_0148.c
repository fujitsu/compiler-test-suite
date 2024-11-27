#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(float a[]);

int main()
{
	float a[10]={
		1.0,2.1,3.2,4.3,5.4,6.5,7.6,8.7,9.8,10.9	};
	long int n=1,i;
	for(i=0;i<9;i++)
	{
		a[i*(n-1)] = fabs(a[i*(n-1)]);
	}
	func(a);
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %g \n",i,a[i]) ;
	}
	exit (0);
}
int func(float a[])
{
	long int i;
	for(i=0;i<10;i++)
		a[i] = fabs(sin((double)i)-a[i]);
	return 0;
}

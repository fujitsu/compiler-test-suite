#include <stdlib.h>
#include <stdio.h>

int main()
{
	float a[10]={
		1.0,2.1,3.2,4.3,5.4,6.5,7.6,8.7,9.8,10.9	};
	float FABS();
	long int n=1,i;
	for(i=0;i<9;i++)
	{
		a[i*(n-1)] = FABS(a[i*(n-1)],1);
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %g \n",i,a[i]) ;
	}
	exit (0);
}
float FABS(a,i)
float a;
long int i;
{
	long int j;
	for(j=0;j<10;j++)
		a += i +j;
	return a;
}

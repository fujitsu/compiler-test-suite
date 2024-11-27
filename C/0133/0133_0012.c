#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1012c(long int *a,long int *b);
int s1012b(long int *a,long int *b);
int s1012a(long int *a,long int *b);

int main()
{
	long int a[10],b[10],i;
	s1012a(&a,&b);
	s1012b(&a,&b);
	s1012c(&a,&b);
	for(i =0;i < 10;i ++)
	{
		printf("a[%ld] => %ld  b[%ld] => %ld\n",i,a[i],i,b[i]);
	}
	exit (0);
}
int s1012a(long int *a,long int *b)
{
	long int i;
	for(i =0;i < 10;i ++)
	{
		a[i]=10;
		b[i]=0;
	}
	return 0;
}
int s1012b(long int *a,long int *b)
{
	long int i;
	for(i =0;i < 10;i ++)
	{
		a[i]=a[i]*2;
	}
	return 0;
}
int s1012c(long int *a,long int *b)
{
	long int i;
	for(i =0;i < 10;i ++)
	{
		a[i]=a[i]+b[i];
	}
	return 0;
}

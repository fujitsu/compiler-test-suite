#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}x;
int main()
{
	int i,j;
	for(i=0;i<10;i++)
	{
		x.a[i]=i+1;
	}
	i=0;
	for(j=x.a[i];j<=10;j++)
	{
		x.a[i]=x.a[i]+1;
		i++;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d]=%ld \n",i,x.a[i]);
	}
	exit (0);
}

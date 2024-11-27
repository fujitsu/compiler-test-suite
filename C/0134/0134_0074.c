#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i=0;
	int j=9;
	int m=0;
	int n=1;
	for(i=0;i<10;i+=(m+n)*1)
	{
		a[i]=j;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}

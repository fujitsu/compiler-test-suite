#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define B l+m+n           
int main()                           
{
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i=0;
	int j=9;
	int l=2;
	int m=-2;
	int n=1;
	for(i=0;i<10;i+=(B+1))
	{
		a[i]=j;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}

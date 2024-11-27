#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=1,m1=1,m2=2,m3=1;
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=n-((m1-m2)+(-(++m3)));i<10;i++)
	{
		a[i] = i ;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}

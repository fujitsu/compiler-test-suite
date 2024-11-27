#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,m1=1,m2=2,m3=1,n=1;
	int a[12]={
		0,0,0,0,0,0,0,0,0,0,0,0	};
	for(i=1;i<10;i++)
	{
		a[i-((m1-m2)+(-(++m3)))-n] = i ;
		n++ ;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}

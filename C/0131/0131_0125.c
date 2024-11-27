#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a[], int i);

int main()
{
	int i,abc[5]={
		1,1,1,1,1	};
	for(i=0;i<5;i++)
	{
		abc[i]=func(abc,i) ;
	}
	printf("abc[]=> %d %d %d %d %d\n",abc[0],abc[1],abc[2],abc[3],abc[4]) ;
	exit (0);
}
int func(a,i)
int a[],i ;
{
	return a[i]+i ;
}

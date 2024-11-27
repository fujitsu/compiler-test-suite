#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a[], int i);

int main()
{
	int i,a[5]={
		1,1,1,1,1	};
	for(i=0;i<5;i++)
	{
		a[i]=func(a,i) ;
	}
	printf("a[*] => %d %d %d %d %d\n",a[0],a[1],a[2],a[3],a[4]);
	exit (0);
}
int func(a,i)
int a[],i ;
{
	return a[i]+i ;
}

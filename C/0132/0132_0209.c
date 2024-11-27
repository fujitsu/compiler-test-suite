#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main()
{
	int i;
	int a[]={
		1,2,3,4,5,6	},
	b[]={
		1,1,1,1,1	},
	c[]={
		2,2,2,2,2	};
	for(i=0;i<5;i++)
	{
		a[i] = 2 + a[i] ;
		b[i] = 3 * a[i+1] ;
	}
	for(i=0;i<5;i++)
	{
		printf(" a =  %d b =  %d c =  %d \n",a[i],b[i],c[i]) ;
	}
	exit (0);
}

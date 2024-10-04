#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[5],b[5]={
		0,1,2,3,4	},
	c[5]={
		4,3,2,1,0	};
	for(i=0;i<5;i++)
	{
		a[i] = b[i] + c[i] ;
	}

	printf(" a[0:4] => %d %d %d %d %d\n",a[0],a[1],a[2],a[3],a[4]) ;
	exit (0);
}

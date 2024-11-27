#include <stdlib.h>
#include <stdio.h>
#include <math.h>

static double    a[10]=  {
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	static long int  b[10]={
		0,1,0,1,1,1,0,0,1,0	};
	static double    d[10]={
		1,1,1,1,1,1,1,1,1,1	};
	static float     e[10]={
		-1,0,1,2,3,4,5,6,7,8	};
	static int       f[10]={
		0,1,2,3,4,5,6,7,8,9	},
	i,*q,j;
	static int       g[10]={
		0,1,2,3,4,5,6,7,8,9	};
	static float     c[10]={
		5,6,7,8,9,0,1,2,3,4	};
	q=&f[0];
	for (i=0,j=i;i<10;i++)
	{
		if (d[g[*(q+i)]]==b[*(q+i)]) a[*(q+i)]=c[*(q+i)]+j;
	}
	for (i=0;i<10;i++) printf("%f \n",a[i]);
	printf("%d \n",*q);
	exit (0);
}

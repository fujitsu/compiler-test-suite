#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	},
	i,*p,*q,j,k;
	int b[10]={
		-1,0,1,2,3,4,5,6,7,8	};
	int c[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int d[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int e[10]={
		-1,0,1,2,3,4,5,6,7,8	};
	int f[10]={
		0,1,2,3,4,5,6,7,8,9	};
	p=&d[9];
	q=&f[0];
	i = 0;
	for (j=0,k=0;i<10;*p--)
		if (e[k++]>-10)
		{
			a[i] = f[i] + *p - j;
			i++;
			j++;
		}
	for(i=0;i<10;i++) c[i]=i ;
	for (i=0;i<10;i++) printf("%d %d \n",a[i],c[i]);
	exit (0);
}

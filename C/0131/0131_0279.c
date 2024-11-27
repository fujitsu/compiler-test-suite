#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,k,a[10],b[10],c[10];
	for(i=0,j=0,k=0;i<10,j<10,k<10;i++,j++,k++)
	{
		a[i] = i;
		b[j] = j;
		c[k] = k;
	}
	for(i=0,j=0,k=0;i<10,j<10,k<10;i++,j++,k++)
	{
		printf("a[%d]=%d b[%d]=%d c[%d]=%d \n",i,a[i],j,b[j],k,c[k]);
	}
	exit (0);
}

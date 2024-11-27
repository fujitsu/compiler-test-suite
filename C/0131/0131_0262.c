#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[10],b[10],c[10];
	for(i=0,j=0;i<10,j<10;i++,j++)
	{
		a[i]=i;
		b[j]=j;
	}
	for(i=0,j=0;i<10,j<10;i++,j++)
	{
		printf("a[%d]=%d b[%d]=%d  \n",i,a[i],j,b[j]);
	}
	exit (0);
}

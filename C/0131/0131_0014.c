#include <stdlib.h>
#include <math.h>
#include <stdio.h>



int main()
{
	long int i,j,k;
	double  a[20],b[20],c[20];
	double  x[20],y[20],z[20];
	for(i=0;i<20;i++)
	{
		a[i]=i;
		b[i]=10*(-i);
		c[i]=21-i;
		x[i]=1.0;
		y[i]=(double)(i);
		z[i]=3.0;
	}
	for(i=0,j=-1,k=0;i<20;i++)
	{
		a[k]=b[i]+c[i];
		b[++j]=a[k++]-c[i];
	}
	printf(" main result-1 \n");
	printf("i=%ld j=%ld \n",i,j);
	for(i=0;i<20;i++)
	{
		printf("a=%lg ",a[i]);
	}
	for(i=0;i<20;i++)
	{
		printf("b=%lg ",b[i]);
	}
	printf("\n");
	for(i=0,j=0,k=0;i<10;i++,++k)
	{
		x[i]=y[j]+z[k];
		y[++j]=x[i++]*z[k];
	}
	printf(" main result-2 \n");
	printf("i=%ld j=%ld k=%ld \n",i,j,k);
	for(i=0;i<20;i++)
	{
		printf("x=%lg ",x[i]);
	}
	for(i=0;i<20;i++)
	{
		printf("y=%lg ",y[i]);
	}
	printf("\n");
	exit (0);
}

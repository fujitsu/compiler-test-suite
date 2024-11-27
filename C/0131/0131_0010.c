#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int sub1(float a[], float b[], long int k[], int nn);
int sub2(float a[], float b[], unsigned long int l[], int nn);
int main (void)
{
	long int i;
	float a[20],b[20];
	long int c[20];
	unsigned long int l[20];
	for(i=0;i<20;i++)
	{
		a[i]=(float)(i);
		b[i]=10.;
		c[i]=20-i;
		l[i]=(a[i]>b[i]);
	}
	printf(" main result \n");
	for(i=0;i<20;i++)
	{
		if (l[i]>0){
			a[i]+=1.;
		}
	}
	for(i=0;i<20;i++)
	{
		printf(" l= %lu ",l[i]);
		printf(" a= %g  ",a[i]);
		printf(" c= %ld \n",c[i]);
	}
	sub1(a,b,c,20);
	sub2(a,b,l,20);
	exit (0);
}
int sub1(float a[], float b[], long int k[], int nn)
{
	long int i,j;
	for(i=0;i<nn;i++)
	{
		j=a[i]>b[i];
		k[i]=j+i;
		if (j==0) k[i]+=1;
	}
	printf(" sub1 result \n");
	for(i=0;i<nn;i++)
	{
		printf(" k= %ld ",k[i]);
	}
}
int sub2(float a[], float b[], unsigned long int l[], int nn)
{
	long int i;
	unsigned long int j;
	for(i=0;i<nn;i++)
	{
		j=a[i]>b[i];
		l[i]=j+i;
		if (j) l[i]+=2;
	}
	printf("\n");
	printf(" sub2 result \n");
	for(i=0;i<nn;i++)
	{
		printf(" l= %lu ",l[i]);
	}
	printf("\n");
}

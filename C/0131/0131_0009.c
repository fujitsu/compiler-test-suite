#include <stdlib.h>
#include <stdio.h>
#include <math.h>



int sub(float a[], float b[], long int c[], unsigned long int d[]);
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
		printf(" l= %lu ",l[i]);
		printf(" c= %ld \n",c[i]);
	}
	for(i=0;i<20;i++)
	{
		l[i]=l[i]+(i>b[i]);
		c[i]=(c[i]>i)+1;
		if (!l[i]){
			a[i]=a[i]+b[i];
		}
		if (c[i]==1){
			b[i]=b[i]+1.;
		}
	}
	sub(a,b,c,l);
	printf(" sub  result \n");
	for(i=0;i<20;i++)
	{
		printf(" l= %lu ",l[i]);
		printf(" c= %ld \n",c[i]);
	}
	exit (0);
}
int sub(float a[], float b[], long int c[], unsigned long int d[])
{
	unsigned long int x;
	long int i,y;
	for(i=0;i<20;i++)
	{
		x=a[i]>b[i]+1;
		y=c[i]>i-1;
		d[i]=x;
		c[i]=y;
	}
}

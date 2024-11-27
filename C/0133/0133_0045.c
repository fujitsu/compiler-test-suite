#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (float a[], float b[], float c[], float d[], long int l, long int m);

int main()
{
	float a[100],b[100];
	float a1[100],b1[100];
	long int i;
	long int l=1;
	for(i=0;i<100;i++){
		a[i]=1;
	}
	for(i=0;i<100;i++){
		b[i]=1;
	}
	sub(a,b,a1,b1,l,100);
	exit (0);
}
int sub (float a[], float b[], float c[], float d[], long int l, long int m)
{
	long int i;
	for(i=0;i<m;i++)
	{
		c[i]=(float)(i);
	}
	for(i=0;i<m;i+=2)
	{
		b[i]=(float)(i+1);
	}
	for(i=0;i<m;i+=3)
	{
		a[i]=(float)(i+2);
	}
	if(l==0) printf("'NG'");
	for(i=0;i<m;i++)
	{
		d[i]=a[i]+b[i]+c[i];
	}
	printf("''\n");
	for(i=0;i<m;i++){
		printf("d[%ld]=%g\n",i,d[i]);
	}
	return 0;
}

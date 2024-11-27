#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[2000],b[2000],c[2000];
	long int i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
	long int j=1,k;
	long int n=10;
	for(k=0;k<2000;k++)
	{
		b[k]=1;
	}
	for(k=0;k< 2000;k++)
	{
		c[k]=1;
	}
	printf("*****  *****\n");
	i1=j;
	i2=j;
	i3=j;
	i4=j;
	i5=j;
	i6=j;
	i7=j;
	i8=j;
	i9=j;
	i10=j;
	a[0]=0.0;
	for(k=j;k<=n;k++)
	{
		a[k]=b[k]/c[k];
	}
	for(k=0;k<10;k++)
	{
		printf("***** [%ld] ***** \n",k);
		printf(" a[%ld]= %f \n",k,a[k]);
	}
	printf(" i1= %ld  i2= %ld  i3= %ld \n",i1,i2,i3);
	printf(" i4= %ld  i5= %ld  i6= %ld \n",i4,i5,i6);
	printf(" i7= %ld  i8= %ld  i9= %ld \n",i7,i8,i9);
	printf(" i10= %ld  j= %ld  n= %ld \n",i10,j,n);
	exit (0);
}
 

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10];
	float d[10]={
				1.1,1.1,1.1,1.1,1.1,1.1,1.1,1.1,1.1,1.1		};
	float w[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	float x[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		};
	float y[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		};
	float z[10]={
				8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0		};
	float s ;
	long int i,j,k,l,m=10,n=10,p=10,o=10 ;
	for(i=0;i<m;i++)
	{
		a[i]=w[i];
	}
	s=d[5];
	for(j=0;j<n;j++)
	{
		b[j]=x[j];
	}
	for(k=0;k<o;k++)
	{
		c[k]=y[k];
	}
	for(l=0;l<p;l++)
	{
		d[l]=z[l];
	}
	printf("s = %10.3f\n",s);
	for(i=0;i<10;i++) printf("a[%ld]=%8.3f b[%ld]=%8.3f\n",i,a[i],i,b[i]) ;
	for(i=0;i<10;i++) printf("c[%ld]=%8.3f d[%ld]=%8.3f\n",i,c[i],i,d[i]) ;
	exit (0);
}

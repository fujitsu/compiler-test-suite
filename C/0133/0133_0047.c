#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10],d[10];
	float w[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	float x[10+1]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0	};
	float y[10+1]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0	};
	float z[10+1]={
				8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0,8.0	};
	float s;
	long int l,i,j,k;
	for(l=0;l<10;l++)
	{
		for(i=0;i<10;i++)
		{
			a[i]=w[i];
		}
		for(j=0;j<10;j++)
		{
			b[j]=x[i];
		}
		for(k=0;k<10;k++)
		{
			c[k]=y[i];
		}
		s=a[4];
		d[l]=z[i];
	}
	printf("s=%g\n",s);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][40],b[40][40],c[40][40];
	long int nn=15;
	long int j,i;
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			a[j][i]=1.;
			b[j][i]=2.;
		}
	}
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			c[j][i]=3.;
		}
	}
	for(i=1;i<nn;i++)
	{
		for(j=1;j<nn;j++)
		{
			a[j][i]=b[j*2+1][i]+c[j*2+2][i];
			b[j][i*2+1]=a[j][i*2+1]+c[j*2+1][i];
		}
		for(j=1;j<nn;j++)
		{
			c[j*2+1][i]=b[j*2+2][i*2+2]+a[j*1][i*1];
		}
	}
	printf("  ***  *** \n");
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g , c[%ld][%ld]=%g\n",
			    j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]);
		}
	}
	exit (0);
}

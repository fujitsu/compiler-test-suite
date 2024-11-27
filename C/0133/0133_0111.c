#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][40],b[40][40],c[40][40];

	long int nn=15;
	long int n=2;
	long int m=1;
	long int i,j;
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
	for(i=1;i<nn;i+=n)
	{
		for(j=1;j<nn;j++)
		{
			a[j+1][i*m+n]=b[j*1][i*m]+c[j][i];
		}
		for(j=1;j<nn;j++)
		{
			b[j][i*m-1]=a[j][m*i+1]*c[j][i];
		}
	}
	printf("  ***  *** \n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g\n",j,i,a[j][i],
			    j,i,b[j][i]);
		}
	}
	exit (0);
}

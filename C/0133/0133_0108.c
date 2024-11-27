#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][20],b[40][20],c[40][20];

	long int nn=15;
	long int n=2;
	long int i,j;
	for(j=0;j<40;j++){
		for(i=0;i<20;i++){
			a[j][i]=1.0;
			b[j][i]=2.0;
		}
	}
	for(j=0;j<40;j++){
		for(i=0;i<20;i++){
			c[j][i]=3.0;
		}
	}
	for(i=0;i<9;i+=2)
	{
		for(j=0;j<nn;j+=2)
		{
			a[j][i*n+2]=b[j*1][i*n+1]+c[j][i];
		}
		for(j=1;j<nn;j+=2)
		{
			b[j][i]=a[j][n*i+1]*c[j][i];
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

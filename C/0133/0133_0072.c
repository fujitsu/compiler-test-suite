#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int nn=15;
	long int n=0;
	long int i,j;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a[j][i]=1.;
			b[j][i]=2.;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			c[j][i]=3.;
		}
	}
	for(i=1;i<nn;i++)
	{
		for(j=0;j<nn;j++)
		{
			a[j][n]=b[j][i]+c[j][n+1];
		}
		for(j=0;j<nn;j++)
		{
			c[j+1][n]=a[j+1][n+1]*b[j][i];
		}
	}
	printf("  ***  *** \n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("a[%ld][%ld]=%g , c[%ld][%ld]=%g\n",j,i,a[j][i],
			    j,i,c[j][i]);
		}
	}
	exit (0);
}
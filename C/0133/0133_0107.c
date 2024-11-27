#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][20],b[40][20],c[40][20];

	long int nn=15;
	long int n=2;
	long int j,i;
	for(j=0;j<40;j++){
		for(i=0;i<20;i++){
			a[j][i]=1.;
			b[j][i]=2.;
		}
	}
	for(j=0;j<40;j++){
		for(i=0;i<20;i++){
			c[j][i]=3.;
		}
	}
	for(i=0;i<nn;i++)
	{
		for(j=1;j<15;j+=n)
		{
			a[j+n][i+n*2]=b[j+n*1][i]+c[j][i];
		}
		for(j=0;j<10;j++)
		{
			b[j][i]=a[j*n+1][i]*c[j][i];
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

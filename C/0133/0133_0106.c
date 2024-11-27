#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][20],b[40][20],c[40][20];

	long int nn=12;
	long int n=5;
	long int m=2;
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
	for(i=0;i<nn;i++)
	{
		for(j=1;j<nn;j++)
		{
			a[j+n][i+n+1]=b[j+n-1][i]+c[j][i];
		}
		for(j=0;j<nn-1;j++)
		{
			b[j][i]=a[j+m][i+m]*c[j][i];
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

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int nn=15;
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
		for(j=1;j<i-1;j++)
		{
			a[j][i]=b[i][i]/c[j][i];
		}
		for(j=1;j<i-1;j++)
		{
			b[i][j]=a[i][i]*c[j][i];
		}
	}
	printf("  ***  *** \n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g , c[%ld][%ld]=%g\n",
			    j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]);
		}
	}
	exit (0);
}

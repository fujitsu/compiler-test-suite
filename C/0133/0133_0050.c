#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int nn=10;
	long int i,j,k;
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
	for(i=0;i<nn;i++)
	{
		for(j=0;j<10;j++)
		{
			a[i][j]=b[i][j]+c[i][j];
		}
		for(k=0;k<10;k++)
		{
			b[i][k]=a[i][k]+c[i][k];
		}
	}
	printf("  ***  ***\n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g\n",j,i,a[j][i],
			    j,i,b[j][i]);
		}
	}
	exit (0);
}

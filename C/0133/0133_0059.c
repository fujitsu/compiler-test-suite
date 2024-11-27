#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int j,i,k;
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
	for(i=0;i<20;i++)
	{
		for(j=0;j<20;j++)
		{
			a[i][j]=b[i][j]+c[i][j];
		}
	}
	for(i=0;i<20;i++)
	{
		for(k=0;k<20;k++)
		{
			b[i][k]=a[i][k]*c[i][k];
			c[i][k]=a[i][k]-b[i][k];
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

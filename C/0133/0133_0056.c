#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int nn=10;
	long int n1,i,j,n2,l;
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
		n1=i+1;
		for(j=1;j<n1;j++)
		{
			a[i][j]=b[i][j]+c[j][i];
			b[i][j]=c[n1][i]*a[i-1][j];
		}
		n2=i;
		for(l=0;l<n2;l++)
		{
			c[l][i]=a[i][n2+1]-b[i][l];
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

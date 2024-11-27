#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][40],b[40][40],c[40][40];

	long int nn=15;
	long int n=2;
	long int m=1;
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
	for(i=0;i<nn;i++)
	{
		for(j=n-1;j<nn;j+=n)
		{
			a[j][i]=b[j+1][i]+c[j][i];
		}
		for(j=m-1;j<nn;j+=m)
		{
			b[j][i]=a[j][i]*c[j][i];
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

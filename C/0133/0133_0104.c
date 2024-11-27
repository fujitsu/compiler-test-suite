#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40][40],b[40][40],c[40][40];

	long int nn=15;
	long int j,i;
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			a[j][i]=1.0;
			b[j][i]=2.0;
		}
	}
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			c[j][i]=3.0;
		}
	}
	for(i=1;i<nn;i++)
	{
		for(j=1;j<nn;j+=2)
		{
			a[j*2+1][2*i+2]=b[2*i][i]+c[j][i];
		}
		for(j=0;j<nn;j+=2)
		{
			b[j*2+1][2*i+1]=a[j*2+2][2*i]*c[j][i];
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

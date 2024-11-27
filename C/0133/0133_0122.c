#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[40],b[40],c[40];

	long int nn=35;
	long int i,j;
	for(i=0;i<40;i++){
		a[i]=1.0;
		b[i]=2.0;
	}
	for(i=0;i<40;i++){
		c[i]=3.0;
	}
	for(i=1;i<nn;i++)
	{
		for(j=i+1;j>=0;j-=1)
		{
			a[j]=b[i]+c[j];
		}
		for(j=0;j<=i+1;j++)
		{
			c[j]=b[i]/a[j];
		}
		for(j=i+1;j<nn;j++)
		{
			b[j]=a[i]-c[j];
		}
	}
	printf("  ***  *** \n");
	for(i=0;i<40;i++){
		printf("a[%ld]=%g , b[%ld]=%g , c[%ld]=%g\n",i,a[i],i,b[i],
		    i,c[i]);
	}
	exit (0);
}

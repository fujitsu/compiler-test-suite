#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40],b[40],c[40];
	long int i,j,nn=35;
	for(i=0;i<40;i++){
		a[i]=1.0;
		b[i]=2.0;
		c[i]=3.0;
	}
	for(i=1;i<nn;i++)
	{
		for(j=i+1;j>=0;j-=1)
		{
			a[j]=b[i]/c[j];
		}
		c[i]=(float)i;
		for(j=nn;j>=i;j-=1)
		{
			b[j]=a[i]-c[j];
		}
	}
	for(i=0;i<40;i++){
		printf("a[%ld] = %g  b[%ld] = %g\n",i,a[i],i,b[i]);
	}
	exit (0);
}

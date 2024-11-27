#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double  a[10]={
		10.3,1.4,9.6,2.1,8.8,3.3,7.9,4.1,6.5,5.2	};
	double  b[10]={
		1.,2.,3.,4.,5.,6.,7.,8.,9.,10.	};
	double  c[10]={
		1.,1.,2.,2.,3.,3.,4.,4.,5.,5.	};
	int     i,j=0;
	for( i=0 ; i<10 ; i++ ) 
	{
		if(a[i]>5.0)
		{
			b[j] = a[i];
			j++;
		}
	}
	for( i=0 ; i<j ; i++ ) 
	{
		printf("%f \n",b[i]);
	}
	for( i=0 ; i<10 ; i++ )  
	{
		if(a[i]<5.0)
		{
			c[i]=a[j];
			j++;
		}
	}
	for( i=0 ; i<10 ; i++ ) 
	{
		printf("%f \n",c[i]);
	}
	exit (0);
}

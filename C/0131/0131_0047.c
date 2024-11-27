#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double      qsm[10]={
		0.1,0.3,0.5,0.7,0.9,1.1,1.3,1.5,1.7,1.9	};
	double      rsm[10]={
		1.1,1.3,1.5,1.7,1.9,2.1,2.3,2.5,2.7,2.9	};
	double      ps[10]={
		2.1,2.3,2.5,2.7,2.9,3.3,3.3,3.5,3.7,3.9	};
	double      dba[20] ;
	int         i,n=10 ;
	
	for(i=0;i<n;i++)
	{
		dba[i] = qsm[i] * rsm[i] ;
		dba[19-i] = -qsm[i] * ps[i] ;
	}
	
	n = n + 10 ;
	for(i=0;i<n;i++)
	{
		printf("%7.2f\n",dba[i]) ;
	}
	exit (0);
}

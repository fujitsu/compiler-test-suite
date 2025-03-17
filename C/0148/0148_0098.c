#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float s;
	static unsigned long int i,ls;
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			s = ra[i] + 1.0 ;
		}
		else
		{
			if (ra[i] <  8.0) s = ra[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			ls = ra[i] == i+1 ;
		}
		else
		{
			if (ra[i] <  8.0) ls = ra[i] != i+1 ;
		}
	}
	printf(" ### 8006 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  8.0  =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =   0   =  %ld\n",ls);
	exit (0);
}

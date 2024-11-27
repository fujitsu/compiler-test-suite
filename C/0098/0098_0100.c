#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra;  
int main()
{
	float s;
	static unsigned long int i,ls;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			s = ra.x[i] + 1.0 ;
		}
		else
		{
			if (ra.x[i] <  8.0) s = ra.x[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			ls = ra.x[i] == i+1 ;
		}
		else
		{
			if (ra.x[i] <  8.0) ls = ra.x[i] != i+1 ;
		}
	}
	printf(" ###  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  8.0  =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =   0   =  %ld\n",ls);
	exit (0);
}

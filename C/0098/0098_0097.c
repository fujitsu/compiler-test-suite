#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb;  
int main()
{
	static unsigned long int ls;
	long int i;
	float s;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
                rb.x[i]=1.0;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5)
		{
			s = ra.x[i-1] + 1.0 ;
		}
		else
		{
			s = rb.x[i-1] + 1.0 ;
		}
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5)
		{
			ls = i != ra.x[i-1] ;
		}
		else
		{
			ls = rb.x[i-1] == i;
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   *** s  =  2.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   0    =  %ld\n",ls);
	exit (0);
}

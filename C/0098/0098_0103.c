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
 	        rb.x[i]=5.0;
	}
	for(i=0;i<10;i++)
	{
		if (i == 3)
		{
			s = ra.x[i] + rb.x[i] - 1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 3)
		{
			ls = ra.x[i] >= rb.x[i];
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** s  =  8.0  = %g\n",s);
	printf(" ** ls =   0   = %ld\n",ls);
	exit (0);
}

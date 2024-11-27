#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb;  
int main()
{
        float s;
	static unsigned long int i,j,ls;
        for(i=0,j=11;i<10;i++,j++)
        {
 	        ra.x[i]=(float)(i+1);
 	        rb.x[i]=(float)(j);
	}
	for(i=0;i<10;i++)
	{
		s = ra.x[i] + 1.0 ;
		if (i == 5) s = rb.x[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls = ra.x[i] == i+1 ;
		if (i == 5) ls = rb.x[i] == ra.x[i] ;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  11.0  =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld\n",ls);
	exit (0);
}

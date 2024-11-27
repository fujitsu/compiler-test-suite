#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb;  
static struct st2{
        unsigned long int y[10];
} l,lb;  
int main()
{
	float s;
        static unsigned long int i,ls;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
 	        rb.x[i]=(float)(i+1);
                lb.y[i]=1;
	}
        for(i=0;i<10;i++)
        {
 	        l.y[i]=1;
 	        l.y[i+1]=0;
                i++;
	}
	for(i=0;i<10;i++)
	{
		if (l.y[i] == 1)
		{
			s = ra.x[i] + 1.0 ;
			rb.x[i] = s ;
			s = rb.x[i] + 1.0 ;
		}
		else
		{
			s = ra.x[i] + 2.0 ;
			rb.x[i] = s ;
			s = rb.x[i] + 2.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (l.y[i] == 1)
		{
			ls = ra.x[i] == i+1 ;
			lb.y[i] = ls ;
			ls = 1 ^ lb.y[i] ;
		}
		else
		{
			ls = ra.x[i] != i+1 ;
			lb.y[i] = ls ;
			ls = lb.y[i] ;
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    **  s =  14.0   =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =    0    =  %ld\n",ls);
	exit (0);
}

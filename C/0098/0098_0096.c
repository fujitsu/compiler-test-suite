#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra,rb;  
static struct st2{
        unsigned long int y[10];
} lb;  
int main()
{
	long int ls,i;
	float s;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
                rb.x[i]=5.0;
                lb.y[i]=1;		
	}
	for(i=0;i<10;i++)
	{
		s = ra.x[i] + 1.0;
		rb.x[i] = s + ra.x[i];
		s = rb.x[i] + 1.0;
	}
	for(i=0;i<10;i++)
	{
		ls = ra.x[i] == i+1;
		lb.y[i] = ls;
		ls = 1 ^ lb.y[i];
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   *** s  = 22.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   0    =  %ld\n",ls);
	exit (0);
}

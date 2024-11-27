#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} s,ra,rb;
static struct st2{
        unsigned long int y[10];
} ls;  
int main()
{
	static unsigned long int i;
	for(i=0;i<10;i++)
	{
	        ra.x[i] = (float)(i+1);
	        rb.x[i] = (float)(i+11);
	}
	for(i=0;i<10;i++)
	{
		s.x[i] = ra.x[i] + 1.0 ;
		if (i == 5) s.x[0] = rb.x[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls.y[i] = ra.x[i] == i+1 ;
		if (i == 5) ls.y[0] = rb.x[i] == i+1 ;
	}
	printf(" ###  ## BUSY ON EXIT ####\n");
	printf("  ** REAL DATA **    s[0] = 17.0 =  %g\n",s.x[0]);
	printf(" ** LOGICAL DATA ** ls[0] =  0   =  %ld\n",ls.y[0]);
	exit (0);
}

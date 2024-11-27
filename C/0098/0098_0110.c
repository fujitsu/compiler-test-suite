#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} s,ra;
static struct st2{
        unsigned long int y[10];
} ls;  
int main()
{
	static unsigned long int i;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			s.x[0] = ra.x[i] + 1.0 ;
		}
		else
		{
			if (ra.x[i] <  8.0) s.x[1] = ra.x[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			ls.y[0] = ra.x[i] == i+1;
		}
		else
		{
			if (ra.x[i] <  8.0) ls.y[1]  = ra.x[i] != i+1;
		}
	}
	printf(" ###  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA ** s[0] = 6.0 =   %g\n",s.x[0]);
	printf(" ** REAL DATA ** s[1] = 8.0 =   %g\n",s.x[1]);
	printf(" ** LOGICAL DATA ** ls[0] =  1  =  %ld\n",ls.y[0]);
	printf(" ** LOGICAL DATA ** ls[1] =  0  =  %ld\n",ls.y[1]);
	exit (0);
}

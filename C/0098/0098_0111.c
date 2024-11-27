#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} s,ra;
static struct st2{
        unsigned long int y[10];
} l,ls;  
int main()
{
        static unsigned long int i;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
                s.x[i]=0.0;
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
			s.x[0] = ra.x[i] + 1.0 ;
		}
		else
		{
			s.x[1] = ra.x[i] + 2.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (l.y[i] == 1)
		{
			ls.y[0] = ra.x[i] == i+1 ;
		}
		else
		{
			ls.y[1] = ra.x[i] != i+1 ;
		}
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA **  s[0] = 10.0 =  %g\n",s.x[0]);
	printf(" ** REAL DATA **  s[1] = 12.0 =  %g\n",s.x[1]);
	printf(" ** LOGICAL DATA ** ls[0] =  1  =  %ld\n",ls.y[0]);
	printf(" ** LOGICAL DATA ** ls[1] =  0  =  %ld\n",ls.y[1]);
	exit (0);
}


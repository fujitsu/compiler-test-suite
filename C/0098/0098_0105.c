#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} a,s;  
static struct st2{
        unsigned long int y[10];
} ls;
int main()
{
	static unsigned long int i;
	for(i=0;i<10;i++)
	{
	        a.x[i] = (float)i;
	}
	for(i=0;i<10;i++)
	{
		s.x[0] = a.x[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls.y[0] = a.x[i] == i+1 ;
	}
	printf(" ####  # BUSY ON EXIT ####\n");
	printf(" ** REAL DATA ** s[0] = 10.0 =  %g\n",s.x[0]);
	printf(" ** LOGICAL DAAT ** ls[0] = 0 =  %ld\n",ls.y[0]);
	exit (0);
}

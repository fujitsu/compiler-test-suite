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
	for(i=1;i<=10;i++)
	{
		if (i == 5) s.x[0] = ra.x[i-1] + 1.0 ;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5) ls.y[0] = ra.x[i-1] == i;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA ** s[0] = 6.0 =   %g\n",s.x[0]);
	printf(" ** LOGICAL DATA ** ls[0] = 1 =  %ld\n",ls.y[0]);
	exit (0);
}

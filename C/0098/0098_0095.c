#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x;
} ra[10];  
int main()
{
	float s;
	long int i;
	static unsigned long int ls;
        for(i=0;i<10;i++)
        {
 	        ra[i].x=(float)(i+1);
	}
	for(i=0;i<10;i++)
	{
		s = ra[i].x + 1.0;
	}
	for(i=0;i<10;i++)
	{
		ls = ra[i].x == i+1;
	}
	printf(" ###  ### BUSY ON EXIT ###\n");
	printf(" ** REAL DATA    ** s  = 11.0   =  %g \n",s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld \n",ls);
	exit (0);
}

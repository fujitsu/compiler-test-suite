#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} ra;  
static struct st2{
        unsigned long int y[10];
} rl;  
int main()
{
	long int i,ls;
	float s;
        for(i=0;i<10;i++)
        {
 	        ra.x[i]=(float)(i+1);
	}
        for(i=0;i<5;i++)
        {
 	        ra.x[i]=1;
	}
        for(;i<10;i++)
        {
 	        ra.x[i]=0;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5) s =ra.x[i-1] + 1.0 ;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5)  ls = rl.y[i-1];
	}
	printf(" ###  ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   ***  s =  6.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   1    =  %ld\n",ls);
	exit (0);
}

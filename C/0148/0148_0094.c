#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		};
	static unsigned long int lb[10]={
				1,1,1,1,1,1,1,1,1,1		};
	long int ls,i;
	float s;
	for(i=0;i<10;i++)
	{
		s = ra[i] + 1.0;
		rb[i] = s + ra[i];
		s = rb[i] + 1.0;
	}
	for(i=0;i<10;i++)
	{
		ls = ra[i] == i+1;
		lb[i] = ls;
		ls = 1 ^ lb[i];
	}
	printf(" #### 8002 ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   *** s  = 22.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   0    =  %ld\n",ls);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	static unsigned long int rl[10]={
				1,1,1,1,1,0,0,0,0,0		};
	long int i,ls;
	float s;
	for(i=1;i<=10;i++)
	{
		if (i == 5) s =ra[i-1] + 1.0 ;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5) ls = rl[i-1];
	}
	printf(" ### 8004 ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   ***  s =  6.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   1    =  %ld\n",ls);
	exit (0);
}

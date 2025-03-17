#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	static unsigned long int ls;
	long int i;
	float s;
	for(i=1;i<=10;i++)
	{
		if (i == 5)
		{
			s = ra[i-1] + 1.0 ;
		}
		else
		{
			s = rb[i-1] + 1.0 ;
		}
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5)
		{
			ls = i != ra[i-1] ;
		}
		else
		{
			ls = rb[i-1] == i;
		}
	}
	printf(" #### 8003 ## BUSY ON EXIT ####\n");
	printf(" *** REAL DATA   *** s  =  2.0   =  %g\n",s);
	printf(" *** LOGICAL DATA ** ls =   0    =  %ld\n",ls);
	exit (0);
}

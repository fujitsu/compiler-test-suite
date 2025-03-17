#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float s,ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		};
	static unsigned long int i,ls,l[10]={
				1,0,1,0,1,0,1,0,1,0		};
	static unsigned long int lb[10]={
				1,1,1,1,1,1,1,1,1,1		};
	for(i=0;i<10;i++)
	{
		if (l[i] == 1)
		{
			s = ra[i] + 1.0 ;
			rb[i] = s ;
			s = rb[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (l[i] == 1)
		{
			ls = ra[i] == i+1 ;
			lb[i] = ls ;
			ls = 1 ^ lb[i] ;
		}
	}
	printf(" #### 8008 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA   **  s  =  11.0  =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =    0   =  %ld\n",ls);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>









int main()
{
	float s[10],ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,
				                                                               20.0		};
	static unsigned long int i,ls[10];
	for(i=0;i<10;i++)
	{
		s[i] = ra[i] + 1.0 ;
		if (i == 5) s[0] = rb[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls[i] = ra[i] == i+1 ;
		if (i == 5) ls[0] = rb[i] == i+1 ;
	}
	printf(" ### 8015 ## BUSY ON EXIT ####\n");
	printf("  ** REAL DATA **    s[0] = 17.0 =  %g\n",s[0]);
	printf(" ** LOGICAL DATA ** ls[0] =  0   =  %ld\n",ls[0]);
	exit (0);
}

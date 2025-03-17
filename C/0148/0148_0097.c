#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float s,ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,
				                                                               20.0		};
	static unsigned long int i,ls;
	for(i=0;i<10;i++)
	{
		s = ra[i] + 1.0 ;
		if (i == 5) s = rb[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls = ra[i] == i+1 ;
		if (i == 5) ls = rb[i] == ra[i] ;
	}
	printf(" #### 8005 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  11.0  =  %g\n",s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld\n",ls);
	exit (0);
}

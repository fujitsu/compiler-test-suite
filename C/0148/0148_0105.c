#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	float s[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	static unsigned long int i,ls[10]={
				1,1,1,1,1,1,1,1,1,1		};
	for(i=0;i<10;i++)
	{
		if (i > 4)
		{
			s[0] = ra[i] + 1.0 ;
		}
		else
		{
			s[1] = rb[i] + 1.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 4)
		{
			ls[0] = ra[i] == i+1 ;
		}
		else
		{
			ls[1] = rb[i] == ra[i] ;
		}
	}
	printf(" #### 8013 ## BUSY ON EXIT ####\n");
	printf(" REAL DATA ***\n");
	printf(" s[0] = 11.0 , s[1] = 2.0\n");
	printf(" s[0] = %g  , s[1] = %g\n",s[0],s[1]);
	printf(" ** LOGICAL DATA ***\n");
	printf(" ls[0] = t   , ls[0] = f\n");
	printf(" ls[0] = %ld , ls[1] = %ld\n",ls[0],ls[1]);
	exit (0);
}

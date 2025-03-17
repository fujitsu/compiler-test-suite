#include <stdlib.h>
#include <math.h>
#include <stdio.h>









int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float s[10]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	static unsigned long int i,l[10]={
				1,0,1,0,1,0,1,0,1,0		};
	static unsigned long int ls[10]={
				1,1,1,1,1,1,1,1,1,1		};
	for(i=0;i<10;i++)
	{
		if (l[i] == 1)
		{
			s[0] = ra[i] + 1.0 ;
		}
		else
		{
			s[1] = ra[i] + 2.0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		if (l[i] == 1)
		{
			ls[0] = ra[i] == i+1 ;
		}
		else
		{
			ls[1] = ra[i] != i+1 ;
		}
	}
	printf(" #### 8017 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA **  s[0] = 10.0 =  %g\n",s[0]);
	printf(" ** REAL DATA **  s[1] = 12.0 =  %g\n",s[1]);
	printf(" ** LOGICAL DATA ** ls[0] =  1  =  %ld\n",ls[0]);
	printf(" ** LOGICAL DATA ** ls[1] =  0  =  %ld\n",ls[1]);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>









int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float rb[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		};
	static unsigned long int ls;
	long int i;
	float s;
	for(i=0;i<10;i++)
	{
		if (i == 3)
		{
			s = ra[i] + rb[i] - 1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		if (i == 3)
		{
			ls = ra[i] >= rb[i];
		}
	}
	printf(" #### 8009 ## BUSY ON EXIT ####\n");
	printf(" ** s  =  8.0  = %g\n",s);
	printf(" ** ls =   0   = %ld\n",ls);
	exit (0);
}

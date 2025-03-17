#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	float s;
	long int i;
	static unsigned long int ls;
	for(i=0;i<10;i++)
	{
		s = ra[i] + 1.0;
	}
	for(i=0;i<10;i++)
	{
		ls = ra[i] == i+1;
	}
	printf(" ### 8001 ### BUSY ON EXIT ###\n");
	printf(" ** REAL DATA    ** s  = 11.0   =  %g \n",s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld \n",ls);
	exit (0);
}

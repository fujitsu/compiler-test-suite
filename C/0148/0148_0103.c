#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float a[10]={
				0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0		};
	float s[10];
	static unsigned long int ls[10],i;
	for(i=0;i<10;i++)
	{
		s[0] = a[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		ls[0] = a[i] == i+1 ;
	}
	printf(" #### 8011 # BUSY ON EXIT ####\n");
	printf(" ** REAL DATA ** s[0] = 10.0 =  %g\n",s[0]);
	printf(" ** LOGICAL DAAT ** ls[0] = 0 =  %ld\n",ls[0]);
	exit (0);
}

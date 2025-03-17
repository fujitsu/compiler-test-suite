#include <stdlib.h>
#include <math.h>
#include <stdio.h>









int main()
{
	float s[10],ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	static unsigned long int i,ls[10];
	for(i=1;i<=10;i++)
	{
		if (i == 5) s[0] = ra[i-1] + 1.0 ;
	}
	for(i=1;i<=10;i++)
	{
		if (i == 5) ls[0] = ra[i-1] == i;
	}
	printf(" #### 8014 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA ** s[0] = 6.0 =   %g\n",s[0]);
	printf(" ** LOGICAL DATA ** ls[0] = 1 =  %ld\n",ls[0]);
	exit (0);
}

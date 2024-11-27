#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float bbb[50],ccc[50],ddd[50] ;
	float a10[50],a11[50],a14[50],a15[50],a16[50] ;
	float x10[50],x11[50],x12[50],x13[50],x14[50] ;
	union tag1
	{
		float a12[50] ;
		float a13[50] ;
	} uni1 ;
	long int i ;
	for(i=0;i<10;i++)
	{
		bbb[i]    = 1.0 ;
		bbb[i+10] = 2.0 ;
		bbb[i+20] = 3.0 ;
		bbb[i+30] = 4.0 ;
		bbb[i+40] = 5.0 ;
		ccc[i]    = 1.0 ;
		ccc[i+10] = 2.0 ;
		ccc[i+20] = 3.0 ;
		ccc[i+30] = 4.0 ;
		ccc[i+40] = 5.0 ;
		ddd[i]    = 1.0 ;
		ddd[i+10] = 2.0 ;
		ddd[i+20] = 3.0 ;
		ddd[i+30] = 4.0 ;
		ddd[i+40] = 5.0 ;
		a10[i]    = 1.0 ;
		a10[i+10] = 2.0 ;
		a10[i+20] = 3.0 ;
		a10[i+30] = 4.0 ;
		a10[i+40] = 5.0 ;
		a14[i]    = 1.0 ;
		a14[i+10] = 2.0 ;
		a14[i+20] = 3.0 ;
		a14[i+30] = 4.0 ;
		a14[i+40] = 5.0 ;
	}
	for(i=0;i<50;i++)
	{
		if (i < 50)
		{
			a10[49] = i + 10 ;
			x10[i]  = a10[i] + ccc[i] ;
			a11[i]  = bbb[i] + ddd[i] ;
			x11[i]  = a11[0] - ccc[i] + bbb[i] ;
			uni1.a12[i]  = ccc[i] + i + ddd[i] ;
			x12[i]  = uni1.a13[i] - ddd[i] + 1.0 ;
			a14[49] = i + i ;
			x13[i]  = a14[i] + ccc[i] + a14[i] + ddd[i] ;
			a15[i]  = ddd[i] ;
			a16[i]  = i + 3 ;
			x14[i]  = a15[i] + ccc[i] - ddd[i] + a16[i] ;
		}
	}
	for(i=0;i<50;i++)
	{
		printf("x10[%2ld]=%8.3f x11[%2ld]=%8.3f x14[%2ld]=%8.3f \n",
		    i,x10[i],i,x11[i],i,x14[i]) ;
		printf("x12[%2ld]=%8.3f x13[%2ld]=%8.3f \n",
		    i,x12[i],i,x13[i]) ;
	}
	exit (0);
}

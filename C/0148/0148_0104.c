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
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	static unsigned long int ls[10]={
				1,1,1,1,1,1,1,1,1,1		};
	static unsigned long int lb[10],i;
	for(i=0;i<10;i++)
	{
		s[0]  = ra[i] ;
		rb[i] = s[1] + ra[i] ;
		s[2]  = rb[i] ;
	}
	s[3]  = s[0] + s[1] + s[2] ;
	for(i=0;i<10;i++)
	{
		ls[0] = ra[i] == i+1 ;
		lb[i] = ls[1] ;
		ls[2] = 1 ^ lb[i] ;
	}
	ls[3] = ls[0] && ls[1] && ls[2] ;
	printf(" #### 8012 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA  ***\n");
	printf(" s[0]=10.0 , s[1]=0.0 , s[2]=10.0 , s[3]=20.0\n");
	printf(" s[0]=%g   , s[1]=%g  , s[2]=%g   , s[3]=%g\n",
	    s[0],s[1],s[2],s[3]);
	printf(" ** LOGICAL DATA ****\n");
	printf(" ls[0]=t  , ls[1]=t  , ls[2]=f   , ls[3]=f\n");
	printf(" ls[0]=%ld, ls[1]=%ld, ls[2]=%ld , ls[3]=%ld\n",
	    ls[0],ls[1],ls[2],ls[3]);
	exit (0);
}

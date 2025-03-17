#include <stdlib.h>
#include <math.h>
#include <stdio.h>









union data{
	float s ;
	float x ;
}uni;
union data1{
	unsigned long int ls ;
	unsigned long int es ;
}uni1;
int main()
{
	float ra[10]={
				1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0		};
	long int i;
	for(i=0;i<10;i++)
	{
		uni.s = ra[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		uni1.ls = ra[i] == i+1 ;
	}
	printf(" #### 8010 ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  11.0  =  %g\n",uni.s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld\n",uni1.ls);
	exit (0);
}

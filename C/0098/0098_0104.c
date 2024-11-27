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
struct st1{
        float ra[10];
}tag1;
int main()
{
	long int i;
        for(i=0;i<10;i++)
        {
 	        tag1.ra[i]=(float)(i+1);
	}
	for(i=0;i<10;i++)
	{
		uni.s = tag1.ra[i] + 1.0 ;
	}
	for(i=0;i<10;i++)
	{
		uni1.ls = tag1.ra[i] == i+1 ;
	}
	printf(" ####  ## BUSY ON EXIT ####\n");
	printf(" ** REAL DATA    ** s  =  11.0  =  %g\n",uni.s);
	printf(" ** LOGICAL DATA ** ls =   1    =  %ld\n",uni1.ls);
	exit (0);
}

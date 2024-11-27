#include <stdlib.h>
#include <math.h>
#include <stdio.h>

union smp1{
	float  s[1] ;
	float  x    ;
};
union smp2{
	unsigned long int  ls[1] ;
	unsigned long int  es    ;
};
struct st1{
        float ra[10];
        float s[10];
} tag1;
static struct st2{
        unsigned long int ls[10];
} tag2;
int main()
{
	float             x ;
	static unsigned long int es ;
	long int          i ;
	union smp1 dt1 ;
	union smp2 dt2 ;
	tag1.ra[0] = 1.;
	tag1.ra[1] = 2.;
	tag1.ra[2] = 3.;
	tag1.ra[3] = 4.;
	tag1.ra[4] = 5.;
	tag1.ra[5] = 6.;
	tag1.ra[6] = 7.;
	tag1.ra[7] = 8.;
	tag1.ra[8] = 9.;
	tag1.ra[9] = 10;
	for(i=0;i<10;i++){
		dt1.s[0] = tag1.ra[i] + 1. ;
	}
	for(i=0;i<10;i++){
		dt2.ls[0] = tag1.ra[i] == i ;
	}
	printf(" ***  ***\n");
	printf(" ** REAL DATA ** S(1) = 11. =  %f \n",dt1.s[0]);
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE. =  %ud \n",dt2.ls[0]);
	}
	exit (0);
}

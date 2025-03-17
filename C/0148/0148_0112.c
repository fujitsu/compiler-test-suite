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
int main()
{
	float             ra[10] = {
						1.,2.,3.,4.,5.,6.,7.,8.,9.,10			};
	float             s[10] ;
	float             x ;
	static unsigned long int ls[10] ;
	static unsigned long int es ;
	long int          i ;
	union smp1 dt1 ;
	union smp2 dt2 ;
	for(i=0;i<10;i++){
		dt1.s[0] = ra[i] + 1. ;
	}
	for(i=0;i<10;i++){
		dt2.ls[0] = ra[i] == i ;
	}
	printf(" *** 8020 ***\n");
	printf(" ** REAL DATA ** S(1) = 11. =  %f \n",dt1.s[0]);
	for(i=0;i<10;i++){
		printf(" ** LOGICAL DATA ** LS(0) = .TRUE. =  %ud \n",dt2.ls[0]);
	}
	exit (0);
}

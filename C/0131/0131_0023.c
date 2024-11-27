#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	signed char             schar1 ;
	signed short int        sint2  ;
	signed long int         sint4  ;
	unsigned char           uchar1 ;
	unsigned short int      uint2  ;
	unsigned long int       uint4  ;
	float                   real4  ;
	double                  real8  ;
	long double             real16 ;
	
	schar1 = -1  ;
	uchar1 = 2   ;
	sint2  = -3  ;
	uint2  = 4   ;
	sint4  = -5  ;
	uint4  = 6   ;
	real4  = 7.0 ;
	real8  = 8.0 ;
	real16 = 9.0 ;
	if(real16 == 9.0l) printf("### ok ###\n");
	printf("%3d%3d%3d%3d%3d%3d%4.1f%4.1f\n",
	    schar1,uchar1,sint2,uint2,sint4,uint4,real4,real8) ;
	exit (0);
}

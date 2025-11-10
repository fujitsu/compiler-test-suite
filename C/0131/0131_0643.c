#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int sub(double rr[90]);
int main(){
	double     r[90] , n = 0.0 ;
	int        i ;
	for(i=0 ; i<90 ; i++){
		r[i] = n ;
		n = n + 1.0 ;
	}
	sub(r);
	exit (0);
}
int sub(rr)
double     rr[90];
{
	double     s[90] , c[90] , t[90] ;
	int        i ;
	for (i=0 ; i<90 ; i++){
		s[i] = sin(rr[i]) ;
		c[i] = cos(rr[i]) ;
		t[i] = tan(rr[i]) ;
	}
	for (i=0 ; i<90 ; i++){
		printf("s[%d] = %f \n",i,s[i]);
		printf("c[%d] = %f \n",i,c[i]);
		printf("t[%d] = %f \n",i,t[i]);
	}
}

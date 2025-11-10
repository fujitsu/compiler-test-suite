#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int main()
{
	double    s[90],c[90],t[90],r[90],j;
	long int  i;
	j=0.00000;
	for ( i=0 ; i<90 ; i++ ) 
	{
		r[i] = j;
		s[i] = sin(r[i]);
		c[i] = cos(r[i]);
		t[i] = tan(r[i]);
		j++ ;
	}
	for ( i=0 ; i<90 ; i++ ) 
	{
		printf("s[%ld] = %f \n",i,s[i]);
		printf("c[%ld] = %f \n",i,c[i]);
		printf("t[%ld] = %f \n",i,t[i]);
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long  int rr[90]);

int main()
{
	long int  i,r[90];
	printf("<<<<<<  >>>>>> \n");
	for ( i=0 ; i<90 ; i++ ){
		r[i] = i;
	}
	sub(r);
	exit (0);
}
int sub(rr)
long  int  rr[90];
{
	double    s[90],c[90],t[90];
	long int  i;
	for ( i=0 ; i<90 ; i++ ) {
		s[i] = rr[i];
		c[i] = rr[i];
		t[i] = rr[i];
	}
	for ( i=0 ; i<90 ; i++ ) {
		printf("s[%d] = %f \n",i,s[i]);
		printf("c[%d] = %f \n",i,c[i]);
		printf("t[%d] = %f \n",i,t[i]);
	}
}

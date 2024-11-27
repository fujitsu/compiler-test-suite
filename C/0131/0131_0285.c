#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double    s[90],c[90],t[90],r[90],j;
	int  i;
	printf("<<<<<<  >>>>>> \n");
	j=0.00000;
	for ( i=0 ; i<90 ; i++ )
	{
		r[i] = j;
		s[i] = r[i+1-1];
		c[i] = r[i+2-2];
		t[i] = r[i+3-3];
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

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tagx {
		double       real8      ;
		float        real4[10]  ;
	} namex ;
	struct tagx *point ;
	short int i ;
	
	point = &namex ;
	point->real8  = 0.0 ;
	point->real8  = 0.0 ;
	for(i=9;i>=0;i--)
	{
		point->real4[i] = i ;
		point->real4[i] = i ;
		point->real8    = point->real8  + point->real4[i] / 3 ;
		point->real8    = point->real8  + point->real4[i] / 4 ;
	}
	printf("%10.3f\n",point->real8) ;
	exit (0);
}

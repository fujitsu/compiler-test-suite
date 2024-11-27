#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tagx {
		struct tagy {
			long int   sint41 ;
			long int   sint42 ;
		} namey ;
		long int    sint43[2] ;
	} namex ;
	union  tagx *point1 ;
	struct tagy *point2 ;
	short int  i ;
	
	point1 = &namex ;
	point2 = &point1->namey ;
	point2->sint41 = 41 ;
	point2->sint42 = 42 ;
	for(i=0;i<2;i++)
	{
		printf("%5d \n",point1->sint43[i]) ;
	}
	exit (0);
}

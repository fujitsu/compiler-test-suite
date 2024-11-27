#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tagx {
		long int          sint4[10] ;
		unsigned long int uint4[10] ;
	} namex ;
	union tagx *point ;
	short int  i ;
	
	point = &namex ;
	for(i=0;i<10;i++)
	{
		point->sint4[i] = - i ;
		point->uint4[i] = !(point->uint4[i]+1) + i ;
		printf("%u\n",point->uint4[i]) ;
	}
	exit (0);
}

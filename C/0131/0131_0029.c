#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tagx {
		short int          sint2[10] ;
		unsigned short int uint2[10] ;
	} namex ;
	short int  i ;
	
	for(i=0;i<10;i++)
	{
		namex.sint2[i] = - i ;
		namex.uint2[i] = !(namex.uint2[i]+1) + i ;
		printf("%u\n",namex.uint2[i]) ;
	}
	exit (0);
}

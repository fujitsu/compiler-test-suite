#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tagx {
		int        sint4[10] ;
		float      real4     ;
	} namex ;
	struct tagx namey ;
	short int i ;
	
	namex.real4  = 0.0 ;
	namey.real4  = 0.0 ;
	for(i=0;i<10;i++)
	{
		namex.sint4[i] = i ;
		namey.sint4[i] = i ;
		namex.real4    = namex.real4  + namex.sint4[i] / 3 ;
		namey.real4    = namey.real4  + namey.sint4[i] / 4 ;
	}
	printf("%7.1f%7.1f\n",namex.real4,namey.real4) ;
	exit (0);
}

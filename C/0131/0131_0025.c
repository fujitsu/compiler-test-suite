#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tagx {
		int        sint4[10] ;
		float      real4     ;
	} namex ;
	struct      {
		char       schar1    ;
		short int  sint2[10] ;
	} namey ;
	short int i ;
	
	namex.real4  = 0.0 ;
	namey.schar1 = 0 ;
	for(i=0;i<10;i++)
	{
		namex.sint4[i] = i ;
		namey.sint2[i] = i ;
		namex.real4    = namex.real4  + namex.sint4[i] ;
		namey.schar1   = namey.schar1 + namey.sint2[i] ;
	}
	printf("%5d%7.1f\n",namey.schar1,namex.real4) ;
	exit (0);
}

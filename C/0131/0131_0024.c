#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	char     i         ;
	int      sint4[10] ;
	float    real4[10] ;
	
	for(i=0;i<10;i++)
	{
		sint4[i] = i ;
		real4[i] = i ;
		printf("%3d%4.1f\n",sint4[i],real4[i]) ;
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tagx {
		double       real8      ;
		float        real4[10]  ;
	} namex[10] ;
	struct tagx *ptr[10] ;
	short int i,j ;
	
	for(i=0;i<10;i++)
	{
		ptr[i] = &namex[i] ;
		ptr[i]->real8 = 0.0 ;
		for(j=0;j<10;j++)
		{
			ptr[i]->real4[j] = j + i ;
			ptr[i]->real8    = ptr[i]->real8 + ptr[i]->real4[j] / 3.0 ;
		}
		printf("%10.3f\n",ptr[i]->real8) ;
	}
	exit (0);
}

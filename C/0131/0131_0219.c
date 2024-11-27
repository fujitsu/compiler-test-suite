#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float    a[10]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	};
	long int i ;
	for(i=0;i<10;i++)
	{
		if(i > 5)
		{
			goto lbl_10 ;
		}
		a[i] = sin((double)i) ;
	}
lbl_10:
	;
	for(i=0;i<10;i++) printf(" a[%d] => %f \n",i,a[i]);
	exit (0);
}

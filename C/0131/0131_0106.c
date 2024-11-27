#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tag
	{
		float tmp1 ;
		float tmp2 ;
	} t ;
	float a[10],b[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		t.tmp1 = a[i] ;
		t.tmp1 = i * t.tmp1 ;
		t.tmp2 = t.tmp1 ;
		b[i] = a[i] + i ;
		t.tmp2 = b[i] * t.tmp2 ;
		t.tmp1 = t.tmp1 * t.tmp2 ;
		t.tmp2 = t.tmp1 * t.tmp2 ;
	}
	printf("t.tmp1 => %f  t.tmp2 => %f \n",t.tmp1,t.tmp2) ;
	exit (0);
}

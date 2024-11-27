#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main()
{
	int vr,i,a[2000],b[2000],c[2000];
	for(i=0;i<2000;i++)
	{
		a[i] = 1 ;
		b[i] = 2 ;
		c[i] = 3 ;
	}
	for(i=0;i<2000;i++)
	{
		vr = b[2] + a[i] ;
		b[2] = 5 ;
	}
	for(i=0;i<2000;i++)
	{
		printf(" a =  %d b =  %d c =  %d vr = %d \n",a[i],b[i],c[i],vr) ;
	}
	exit (0);
}

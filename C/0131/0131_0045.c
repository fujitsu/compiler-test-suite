#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float       wvri1,wvri2 ;
	float       wvari[10]={
		0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0	};
	float       bhp  [10]={
		0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0	};
	int         i,n=9 ;
	
	for(i=0 ; i<n ; i++)
	{
		wvri1    = wvari[i] ;
		wvri2    = wvari[i+1] ;
		wvari[i] = (wvri1 + wvri2) / 2.0 ;
		bhp[i]   = wvari[i] * wvri1 ;
	}
	
	for(i=0 ; i<n ; i++)
	{
		printf("%7.4f",bhp[i]) ;
	}
	printf("\n") ;
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int wvri[], int bhp[], int n);








int main (void)
{
	int wvri[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int bhp[10+1] ={
		10,9,8,7,6,5,4,3,2,1,0	};
	int i;

	sub(wvri,bhp,10) ;

	printf("wvri=") ;
	for(i=0;i<10;i++)
		printf("%d  ",wvri[i]) ;
	printf("\n");
	printf("bhp=",bhp[i]) ;
	for(i=0;i<10;i++)
		printf("%d  ",bhp[i]) ;
	printf("\n");
	exit (0);
}

int sub(int wvri[], int bhp[], int n)
{
	int i,wvri1,wvri2 ;
	for ( i=0 ;i<n-1; i++) {
		wvri1 = wvri [i] ;
		wvri2 = wvri [i+1] ;
		wvri[i] = (wvri1+wvri2)/2;
		bhp[i] = wvri[i] * wvri1;
	}
}

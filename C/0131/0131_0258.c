#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int i , j = 0 , a[10] ;
	for(i=10 ; i>0 ; i--)
	{
		a[i-1] = j ;
		j++ ;
		if(j > 5)
			a[i-1] = j + 10 ;
	}
	for(i=0 ; i<10 ; i++)
	{
		printf("a[%d] = %d \n",i,a[i]) ;
	}
	exit (0);
}

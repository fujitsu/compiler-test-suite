#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int   a[20][2] , b[20];          
	long int   sum = 0 ;
	int        i , j ;
	for(i=0 ; i<20 ; i++){                
		for(j=0 ; j<2 ; j++){
			a[i][j] = j ;
		}
	}
	for(i=0 ; i<20 ; i++){               
		for(j=0 ; j<2 ; j++){
			b[i] = a[i][j] ;
		}
	}
	for(i=0 ; i<20 ; i++){
		sum += b[i] ;
	}
	printf("SUM = %ld \n",sum);          
	exit (0);
}

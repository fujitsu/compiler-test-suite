#include <stdlib.h>
#include <stdio.h>
#include <math.h>









int main(){
	int i ;
	long int k=0 ;
	for(i=-2147483647;i<1;i=i+1073741824){
		k+=1;
	}
	printf("k=%ld \n",k) ;
	exit (0);
}

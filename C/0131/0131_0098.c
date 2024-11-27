#include <stdlib.h>
#include <stdio.h>
#include <math.h>

union tag{
	unsigned int a[10] ;
	int b[10] ;
} c ;
int main() {
	int      i ;
	c.b[0] = 1 ;
	for(i=0 ; i<9 ; i++){
		c.b[i+1] = i ;
		c.a[i] = c.a[i+1] + c.b[i] ;
	}
	for(i=0 ; i<10 ; i++){
		printf("c.a[%d] => %d   c.b[%d] => %d  \n",i,c.a[i],i,c.b[i]) ;
	}
	exit (0);
}

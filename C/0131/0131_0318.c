#include <stdlib.h>
#include <math.h>

#include <stdio.h>
struct data{
	long int a[10] ;
};
int main(){
	struct data str;
	struct data *p = &str;
	long int     n = 1 , c[10] ;
	int          i ;
	for(i=0 ; i<10 ; i++) {
		p->a[i] = n ;
		n++;
	}
	for(i=0 ; i<10 ; i++) {
		c[p->a[i]-1] = p->a[i] ;
	}
	for(i=0 ; i<10 ; i++) {
		printf("c[%d] = %ld \n",i,c[i]);
	}
	exit (0);
}

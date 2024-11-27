#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
};
int main(){
	struct data tag1 ;
	struct data *p = &tag1;
	int    i , c[10] ;
	for(i=0 ; i<10 ; i++){
		p->a[i] = i ;
		c[p->a[i]] = p->a[i];
	}
	for(i=0 ; i<10 ; i++){
		printf("c[%d] = %ld \n",i,c[i]);
	}
	exit (0);
}

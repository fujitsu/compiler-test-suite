#include <stdlib.h>
#include <math.h>

#include <stdio.h>
struct data1{
	long int a[10] ;
};
struct data2{
	long int b[10] ;
};
int main(){
	struct data1 tag1 ;
	struct data2 tag2 ;
	struct data1 *p = &tag1 ;
	struct data2 *q = &tag2 ;
	int    i , j , n = 0 , c[10] , d[10] ;
	for(i=0 ; i<10 ; i++){
		p->a[i] = n ;
		q->b[i] = n ;
		n++;
	}
	for(i=0 ; i<10 ; i++){
		c[p->a[i]] = p->a[i] ;
		d[q->b[i]] = q->b[i] ;
	}
	for(j=0 ; j<10 ; j++){
		printf("c[%d] = %d \n",j,c[j]) ;
		printf("d[%d] = %d \n",j,d[j]);
	}
	exit (0);
}

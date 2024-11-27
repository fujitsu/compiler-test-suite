#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef struct  data{
	double  a[10] ;
	double  b ;
}x1;
int sub(struct data xx);
int sub2(struct data *p);
int main() {
	struct data y1 ;
	int    i ;
	double j = 10.0 ;
	for(i=0 ; i<10 ; i++) {
		y1.a[i] = j ;
		y1.b = j ;
		j++ ;
	}
	sub(y1) ;
	for(i=0 ; i<10 ; i++) {
		printf("a[%d] = %g \n",i,y1.a[i]) ;
	}
	sub2(&y1) ;
	for(i=0 ; i<10 ; i++) {
		printf("a[%d] = %g \n",i,y1.a[i]) ;
	}
	exit (0);
}
int sub(xx)
struct data xx ;
{
	int     i ;
	for(i=0 ; i<10 ; i++) {
		xx.a[i] = xx.a[i] + xx.b ;
	}
	return 0;
}
int sub2(p)
struct data *p ;
{
	int     i ;
	for(i=0 ; i<10 ; i++) {
		p->a[i] = p->a[i] + p->b ;
	}
	return 0;
}

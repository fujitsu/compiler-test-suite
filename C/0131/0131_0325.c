#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define A(i)   x.a[i]
#define L(i)   x.l[i]
static struct tag
{
	int a[10] ;
	int l[10] ;
} x ;
int main(){
	int i ;
	for(i=0 ; i<10 ; i++){
		A(i) = i ;
		L(i) = i ;
		A(i) = A(L(i)) + i ;
	}
	for(i=0;i<10;i++){
		printf("a[%d] => %d \n",i ,A(i)) ;
	}
	exit (0);
}

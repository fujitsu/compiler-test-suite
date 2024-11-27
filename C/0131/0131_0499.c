#include <stdio.h>
#include <math.h>

#include  <stdlib.h>
typedef struct data{
	long int a[10];
}str;
int main(){
	int    i , x , m1 = 1 , m2 = 8 ,m3 = 3 ,m4 = 4 ;
	struct data *p ;
	x=sizeof(struct data);
	p=malloc(x);
	for(i = 0 ; i < 10 ; i++){
		p->a[i] = 0 ;
	}
	for(i = 0 ; i < 10 ; i++){
		p->a[i + (m1 - (m2 -(m3 + m4 )))] = i ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" p->a[%d] = %ld \n",i,p->a[i]);
	}
	free(p);
	exit (0);
}

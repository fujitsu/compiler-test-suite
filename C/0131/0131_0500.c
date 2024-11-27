#include <stdio.h>
#include <math.h>

#include <stdlib.h>
typedef struct data{
	long int a;
}str[10];
int main(){
	int    i , n , m1 = 1 , m2 = 8 ,m3 = 3 ,m4 = 4 ;
	struct data *p;
	n=sizeof(struct data)*10;
	p=malloc(n);
	for(i = 0 ; i < 10 ; i++){
		(p+(i + (m1 - (m2 -(m3 + m4 )))))->a = i ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf("(p+%d)->a = %ld \n",i,(p+i)->a);
	}
	free(p);
	exit (0);
}

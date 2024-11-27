#include <stdio.h>
#include <math.h>

#include <stdlib.h>
typedef struct data{
	long int a;
}str[10];
int main(){
	int    i , n , m1 = 1 ;
	struct data *p;
	n=sizeof(struct data)*10;
	p=malloc(n);
	for(i = 0 ; i < 10 ; i++){
		(p+(i+m1-1))->a = i ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf("(p+%d)->a = %ld \n",i,(p+i)->a);
	}
	free(p);
	exit (0);
}

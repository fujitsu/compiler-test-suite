#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag{
	int a[10];
}val;
int main(){
	struct tag *p=&val;
	int i,j;
	for(i=0;i<10;i++){
		p->a[i]=10*i;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,p->a[i]);
	}
	exit (0);
}

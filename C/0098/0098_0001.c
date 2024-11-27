#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a[10],b[10],c[10];
} tag1;
int main(){
	long int i;
	for(i=0;i<10;i++){
		tag1.b[i]=1.0;
                tag1.c[i]=2.0;
	}
	for(i=0;i<10;i++){
		tag1.a[i]=tag1.b[i]+tag1.c[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] = > %f\n",i,tag1.a[i]);
	}
	for(i=0;i<10;i++){
		printf("b[%ld] = > %f\n",i,tag1.b[i]);
	}
	for(i=0;i<10;i++){
		printf("c[%ld] = > %f\n",i,tag1.c[i]);
	}
	exit (0);
}

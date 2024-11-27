#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        double x[10];
} a,b;
int main(){
	long int i;
	for(i=0;i<10;i++){
		a.x[i]=1.0/(i+1);
		b.x[i]=a.x[i]*2.5;
	}
	for(i=0;i<10;i++){
		a.x[i]=(float)(a.x[i]+b.x[i]);
	}
	printf("  ****  ****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f\n",i,a.x[i]);
	}
	for(i=0;i<10;i++){
		printf("b[%ld] => %f\n",i,b.x[i]);
	}
	exit (0);
}


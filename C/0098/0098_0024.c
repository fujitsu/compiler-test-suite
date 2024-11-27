#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} a,b,c;
int main(){
	long int i;
	for(i=1;i<=10;i++){
		a.x[i-1]=i;
		b.x[i-1]=i*2;
		c.x[i-1]=a.x[i-1]+b.x[i-1];
	}
	printf("  *****  (I/O DO TEST)*****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f b[%ld] => %f c[%ld] => %f\n",
		    i,a.x[i],i,b.x[i],i,c.x[i]);
	}
	exit (0);
}

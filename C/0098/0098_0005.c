#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[20];
} a,b,c,d,e,f;
int main(){
	long int i;
	for(i=0;i< 20;i++){
		b.x[i]=1.0;
		c.x[i]=2.0;
		d.x[i]=3.0;
		e.x[i]=4.0;
		f.x[i]=5.0;
	}
	for(i=0;i<20;i++){
		b.x[i]=d.x[i];
		a.x[i]=b.x[i]+c.x[i];
		e.x[i]=f.x[i];
	}
	printf("  *****  ***** DEBUG FUNCTION\n");
	for(i=0;i<20;i++){
		printf("a[%ld] => %f",i,a.x[i]);
		printf("  b[%ld] => %f",i,b.x[i]);
		printf("  e[%ld] => %f\n",i,e.x[i]);
	}
	exit (0);
}

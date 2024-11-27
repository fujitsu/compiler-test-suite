#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct{
	float real;
	float imag;
}complex8;
struct st1{
        double x[10];
} a,b;
struct st2{
        float x[10];
} n,m,l;
int main(){
	complex8 e[10];
	long int i,k;
        for(i=0;i<10;i++){
	        a.x[i]=0.0;
	        b.x[i]=1.0;
	}
        for(i=0;i<10;i++){
	        n.x[i]=1.0;
	        m.x[i]=2.0;
	}
	if (a.x[2] == 0.0) goto LBL_30;
	goto LBL_20;
LBL_30:
	;
	for(i=0;i<10;i++){
		l.x[i]=m.x[i]*m.x[i];
LBL_20:
		;
		n.x[i]=l.x[i]/m.x[i];
		b.x[i]=b.x[i]/m.x[i];
		a.x[i]=b.x[i]*m.x[i];
		e[i].real=a.x[i];
		e[i].imag=0.0;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f    b[%ld] => %f\n",i,a.x[i],i,b.x[i]);

	}
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f%f\n",i,e[i].real,e[i].imag);

	}
	for(i=0;i<10;i++){
		printf(" l[%ld] => %f    m[%ld] => %f\n",i,l.x[i],i,m.x[i]);

	}
	for(i=0;i<10;i++){
		printf(" n[%ld] => %f\n",i,n.x[i]);

	}
	exit (0);
}

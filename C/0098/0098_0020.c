#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a[10];
        float b[10];
        float av[10];
} t1;
int main(){
	long int n=10;
	long int i,j;
	float x=9.0;
        for(i=0;i<10;i++){
                t1.a[i]=1.0;
                t1.b[i]=1.0;
                t1.av[i]=1.0;
	}
	for(j=0;j<3;j++){
LBL_9:
		;
		t1.a[j]=n-x;
		for(i=0;i<n;i++){
			x=t1.a[i]*t1.b[i];
			if (x == 10000) goto LBL_9;
			t1.a[i]=x-t1.a[i];
			t1.av[i]=sqrt(fabs(x));
		}
	}
	printf("  ## A ##\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %10.5f\n",i,t1.a[i]);
	}
	printf("  ## AV ##\n");
	for(i=0;i<10;i++){
		printf(" av[%ld] => %10.5f\n",i,t1.av[i]);
	}
	exit (0);
}

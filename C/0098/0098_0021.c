#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} a,b,av;
int main(){
	long int n=10,i;
	float x;
        for(i=0;i<10;i++){
	        a.x[i]=1.0;
	        b.x[i]=1.0;
	        av.x[i]=1.0;
	}
	x=a.x[2]*b.x[4];
	goto LBL_11;
LBL_11:
	;
	for(i=0;i<n;i++){
		if (x == 0.0) goto LBL_99;
		av.x[i]=sqrt(fabs(x));
	}
LBL_99:
	;
	printf(" x => %f\n",x);
	exit (0);
}

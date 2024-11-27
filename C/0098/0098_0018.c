#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a,b,av;
} t[10];
int main(){
	long int n=10,i;
	float x;
        for(i=0;i<10;i++){
	        t[i].a=1.0;
	        t[i].b=1.0;
	        t[i].av=1.0;
	}
	for(i=0;i<n;i++){
		x=t[i].a*t[i].b;
		if (x == 0.0) goto LBL_99;
		t[i].av=sqrt(fabs(x));
	}
LBL_99:
	;
	printf(" x => %f\n",x);
	exit (0);
}

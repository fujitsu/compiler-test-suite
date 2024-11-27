#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10];
} a,b,av;
int main(){
	long int n=10,i;
	float x=5.0;
	for(i=0;i<10;i++){
	        a.x[i]=1.0;
	        b.x[i]=2.0;
	        av.x[i]=3.0;
	}
LBL_9:
	;
	a.x[2]=n-x;
	for(i=0;i<n;i++){
		x=a.x[i]*b.x[i];
		if (x >  10000) goto LBL_9;
		a.x[i]=x-a.x[i];
		av.x[i]=sqrt(fabs(x));
	}
	for(i=0;i<10;i++){
		printf(" a[%ld] => %13.7f   av[%ld] => %13.7f\n",i,a.x[i],i,av.x[i]);
	}
	exit (0);
}

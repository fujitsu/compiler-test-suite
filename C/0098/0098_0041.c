#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  double x;
} d1[10],d2[1000];
int main(){
	long int n=700,k=1,ic0=0,ic1=1,i;
        for(i=0;i<10;i++){
                d1[i].x=10.0;
        }
	for(i=0;i<1000;i++){
		d2[i].x=2.5;
	}
	for(i=0;i<n;i+=ic1){
		d2[i].x=d1[k-1].x;
		k+=ic0;
	}
	for(i=0;i<1000;i++){
		printf(" d2[%ld] => %f\n",i,d2[i].x);
	}
	exit (0);
}

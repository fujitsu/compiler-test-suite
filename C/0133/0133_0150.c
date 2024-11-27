#include <stdlib.h>
#include <math.h>
#include <stdio.h>

long int n=100 ;
int main() {
	float a[100],b[100],c[100] ;
	long int mi[5]={
				10,20,30,40,50		},
	i,ii,m ;
	for(ii=0;ii<5;ii++){
		m = mi[ii] ;
		for(i=0;i<n;i++){
			a[i] = (float)(sqrt((double)i)) + (float)m * 2.5 ;
		}
		for(i=0;i<n;i++){
			b[i] = a[i] + (float)m ;
		}
		for(i=0;i<n;i++){
			c[i] = (a[i] + b[i]) / (float)m ;
		}
		for(i=0;i<n;i++){
			c[i] = c[i] * 100.0 ;
			printf("a[%2ld] => %g  b[%2ld] => %g  c[%2ld] => %g \n",
			    i,a[i],i,b[i],i,c[i]/100) ;
		}
	}
	exit (0);
}

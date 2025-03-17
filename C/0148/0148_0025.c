#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		},
	b[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	c[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	long int i,j,k;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			k=1;
			while(k<11){
				a[i]=b[i]+c[i];
				k++;
				goto LBL_21;
			}
		}
LBL_21:
		;
	}
	printf("  ***** 2313 *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f  b[%ld] => %f  c[%ld] => %f\n",
		    i,a[i],i,b[i],i,c[i]);
	}
	exit (0);
}

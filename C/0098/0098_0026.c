#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];  
} a,b,c;
int main(){
	long int i,j,k;
        for(i=0;i<10;i++){
	        a.x[i]=0.0;
	        b.x[i]=1.0;
	        c.x[i]=2.0;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			k=1;
			while(k<11){
				a.x[i]=b.x[i]+c.x[i];
				k++;
				goto LBL_21;
			}
		}
LBL_21:
		;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f  b[%ld] => %f  c[%ld] => %f\n",
		    i,a.x[i],i,b.x[i],i,c.x[i]);
	}
	exit (0);
}

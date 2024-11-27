#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a,b,c;
} t[10];
int main(){
	long int i,j,k;
        for(i=0;i<10;i++){
	  t[i].a=0.0;
	  t[i].b=1.0;
	  t[i].c=2.0;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				t[i].a=t[i].b+t[i].c;
				goto LBL_21;
			}
LBL_21:
			;
		}
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f  b[%ld] => %f  c[%ld] => %f\n",
		    i,t[i].a,i,t[i].b,i,t[i].c);
	}
	exit (0);
}

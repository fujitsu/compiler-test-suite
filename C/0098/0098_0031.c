#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  double x[3][3];
} d;
int main(){
	long int i,j;
        for(i=0;i<3;i++){
	        for(j=0;j<3;j++){
	                d.x[i][j]=1.0;
		}
        }
	for(i=0;i<3;i++){
		if (d.x[i][i]==0.0) goto LBL_10;
		for(j=0;j<3;j++){
			d.x[i][j]=j+1;
		}
LBL_10:
		;
	}
	printf("  ****  ****\n");
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf(" d[%ld][%ld] => %f\n",i,j,d.x[i][j]);
		}
	}
	exit (0);
}

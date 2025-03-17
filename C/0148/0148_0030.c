#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	double d[3][3]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	long int i,j;
	for(i=0;i<3;i++){
		if (d[i][i]==0.0) goto LBL_10;
		for(j=0;j<3;j++){
			d[i][j]=j+1;
		}
LBL_10:
		;
	}
	printf("  **** 2323 ****\n");
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf(" d[%ld][%ld] => %f\n",i,j,d[i][j]);
		}
	}
	exit (0);
}

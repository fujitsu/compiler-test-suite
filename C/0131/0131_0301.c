#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int r[5][5],l[5][5];
	int      i,j;
	for (i=0;i<5;i++){
		for (j=0;j<5;j++){
			r[i][j]=10;
			l[i][j]=23.5;
		}
	}
	for (i=0;i<5;i++){
		for (j=0;j<5;j++){
			r[i][j]*=10;
			r[i][j]/=5;
			l[i][j]+=1.5;
			l[i][j]-=0.5;
		}
	}
	printf("****** printf looping now ***** \n");
	for (i=0;i<5;i++){
		for (j=0;j<5;j++){
			printf("%ld %ld \n",r[i][j],l[i][j]);
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
       float x[6][4][4];
} a;
struct st2{
       float x[6][3];
} b;
int main()
{
	long int n=4;
	long int i,j,k,l;
	float s;
	for(k=0;k<4;k++){
		for(j=0;j<4;j++){
			for(i=0;i<6;i++){
				a.x[i][j][k]=2;
			}
		}
	}
	for(j=0;j<3;j++){
		for(i=0;i<6;i++){
			b.x[i][j]=0;
		}
	}
	for(i=0;i<6;i++){
		s=i+1;
		for(j=1;j<4;j++){
			for(k=1;k<n;k++){
				a.x[i][j][k]=a.x[i][j-1][k-1]+s;
			}
		}
	}

	b.x[i-1][j-2]=s;
	l=0;
	for(k=0;k<4;k++){
		for(j=0;j<4;j++){
			for(i=0;i<6;i++){
				printf("    A[%d][%d][%d] ==>%g",i,j,k,a.x[i][j][k]);
				l++;
				if((l%2)==0) printf("\n");
			}
		}
	}
	printf("\n");
	l=0;
	for(j=0;j<3;j++){
		for(i=0;i<6;i++){
			printf("   B[%d][%d] ==>%g",i,j,b.x[i][j]);
			l++;
			if((l%3)==0) printf("\n");
		}
	}
	printf("\n");
	exit (0);
}


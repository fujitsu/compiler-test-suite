#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10][10][10];
} a,b,c;
int main()
{
	long int i,j,k,l;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a.x[i][j][k]=1.0;
				b.x[i][j][k]=2.0;
				c.x[i][j][k]=3.0;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<9;j++){
			for(k=0;k<10;k++){
				a.x[i][j+1][k]+=b.x[i][j+1][k]+c.x[i][j+1][k];
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}
	exit (0);
}

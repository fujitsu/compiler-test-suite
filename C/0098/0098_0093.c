#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10][10][10];
} a,b,c;
int sub (struct st1 a, struct st1 b, struct st1 c, long int n1, long int n2, long int n3, long int n0);
int main (void)
{
	long int i,j,k;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a.x[i][j][k]=1.0;
				b.x[i][j][k]=2.0;
				c.x[i][j][k]=3.0;
			}
		}
	}
	sub(a,b,c,10L,10L,10L,2L);
	exit (0);
}
int sub (struct st1 a, struct st1 b, struct st1 c, long int n1, long int n2, long int n3, long int n0)
{
	long int i,j,k;
	for(i=n0+1;i<n1;i++){
		for(j=n0+0;j<n2;j++){
			for(k=n0-1;k<n3;k++){
				a.x[i][j][k]+=c.x[i][j][k];
				b.x[i][j][k]*=a.x[i][j][k];
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   B[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",b.x[i][j][k]);
			}
		}
	}
	return 0;
}

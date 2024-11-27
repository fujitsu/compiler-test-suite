#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
         float x[1000][6][6];
} a,b,c;
int sub (struct st1 *a, struct st1 *b, struct st1 *c, long int n, long int m);
int main (void)
{
	long int n=1000,m=6;
	long int i,j,k,l=0;
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i++){
				a.x[i][j][k]=3.5;
				b.x[i][j][k]=3.5;
				l++;
				if(l<=6000) c.x[i][j][k]=3.5;
				else c.x[i][j][k]=-9.125;
			}
		}
	}
	for(i=0;i<1000;i+=2){
		for(j=0;j<6;j++){
			for(k=0;k<6;k++){
				a.x[i][j][k]=b.x[i][j][k]+c.x[i][j][k];
			}
		}
	}

	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i+=10){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}

	sub(&a,&b,&c,n,m);
	exit (0);
}
int sub (struct st1 *a, struct st1 *b, struct st1 *c, long int n, long int m)
{
	long int i,j,k;
	for(i=0;i<n;i+=2){
		for(j=0;j<m;j++){
			for(k=0;k<m;k++){
				a->x[i][j][k]=b->x[i][j][k]+c->x[i][j][k];
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i+=10){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a->x[i][j][k]);
			}
		}
	}
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  long int x[5][5][5];
} a,b;
int main()
{
	long int i,j,k,l,m=0;
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				a.x[i][j][k]=0;
				m++;
				if(m<=23) b.x[i][j][k]=1;
				else if(m<=46) b.x[i][j][k]=2;
				else if(m<=69) b.x[i][j][k]=3;
				else if(m<=92) b.x[i][j][k]=4;
				else if(m<=115) b.x[i][j][k]=5;
				else b.x[i][j][k]=6;
			}
		}
	}
	for(i=0;i<4;i++){
		for(j=0;j<4;j++){
			for(k=0;k<=j;k++){
				for(l=0;l<4;l++){
					a.x[i][l][k]=b.x[i][l][k];
				}
			}
		}
	}
	m=0;
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				printf("  A[%d][%d][%d] ==> %d",i,j,k,a.x[i][j][k]);
				m++;
				if((m%4)==0) printf("\n");
			}
		}
	}

	printf("\n");
	exit (0);
}


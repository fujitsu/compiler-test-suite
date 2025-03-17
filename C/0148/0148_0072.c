#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	long int a[5][5][5],b[5][5][5];
	long int i,j,k,l,m=0;
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				a[i][j][k]=0;
				m++;
				if(m<=23) b[i][j][k]=1;
				else if(m<=46) b[i][j][k]=2;
				else if(m<=69) b[i][j][k]=3;
				else if(m<=92) b[i][j][k]=4;
				else if(m<=115) b[i][j][k]=5;
				else b[i][j][k]=6;
			}
		}
	}
	for(i=0;i<4;i++){
		for(j=0;j<4;j++){
			for(k=0;k<=j;k++){
				for(l=0;l<4;l++){
					a[i][l][k]=b[i][l][k];
				}
			}
		}
	}
	m=0;
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				printf("  A[%d][%d][%d] ==> %d",i,j,k,a[i][j][k]);
				m++;
				if((m%4)==0) printf("\n");
			}
		}
	}

	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[5][5][5][5][5][5][5];
	float b[5][5][5][5][5][5][5];
	float c[5][5][5][5][5][5][5];
	long int i,j,k,l,m,n,o;
	for(o=0;o<5;o++){
		for(n=0;n<5;n++){
			for(m=0;m<5;m++){
				for(l=0;l<5;l++){
					for(k=0;k<5;k++){
						for(j=0;j<5;j++){
							for(i=0;i<5;i++){
								a[i][j][k][l][m][n][o]=1.0;
								b[i][j][k][l][m][n][o]=2.0;
								c[i][j][k][l][m][n][o]=3.0;
							}
						}
					}
				}
			}
		}
	}
	for(i=0;i<5;i++){
		for(j=0;j<5;j++){
			for(k=0;k<5;k++){
				for(l=0;l<5;l++){
					for(m=0;m<5;m++){
						for(n=0;n<5;n++){
							for(o=0;o<5;o++){
								a[i][j][k][l][m][n][o]+=b[i][j][k][l][m][n][o]+
								    c[i][j][k][l][m][n][o];
							}
						}
					}
				}
			}
		}
	}
	for(o=0;o<5;o++){
		for(n=0;n<5;n++){
			for(m=0;m<5;m++){
				for(l=0;l<5;l++){
					for(k=0;k<5;k++){
						for(j=0;j<5;j++){
							for(i=0;i<5;i++){
								printf("   A[%d][%d][%d][%d][%d][%d][%d] ==>",i,j,k,l,m,n,
								    o);
								printf(" %16.7f ",a[i][j][k][l][m][n][o]);
							}
							
							printf("\n");
								
						}
					}
				}
			}
		}
	}
	exit (0);
}

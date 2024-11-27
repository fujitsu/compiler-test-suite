#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1
{
  float x[5][5][5][5][5][5][5];
} a,b;  
int main()
{
	long int i,j,k,l,m,n,o,p,i1,i2,i3,i4,i5,i6,i7;
	for(o=0;o<5;o++){
		for(n=0;n<5;n++){
			for(m=0;m<5;m++){
				for(l=0;l<5;l++){
					for(k=0;k<5;k++){
						for(j=0;j<5;j++){
							for(i=0;i<5;i++){
								a.x[i][j][k][l][m][n][o]=1.0;
								b.x[i][j][k][l][m][n][o]=2.0;
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
								for(p=0;p<5;p++){

	
	a.x[i][j][k][l][m][n][o]+=b.x[i][j][k][l][m][n][o];
	

								}
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
							
								printf("  A[%d][%d][%d][%d][%d][%d][%d] ==>%16.7f ",
								    i,j,k,l,m,n,o,a.x[i][j][k][l][m][n][o]);
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


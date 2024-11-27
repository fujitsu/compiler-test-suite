#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[5][5][5][5][5];
} a,b,c;
int main()
{
	long int i,j,k,l,m,i1,i2,i3,i4,i5;
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						a.x[i][j][k][l][m]=1.0;
						b.x[i][j][k][l][m]=2.0;
						c.x[i][j][k][l][m]=3.0;
					}
				}
			}
		}
	}
	for(i1=0;i1<5;i1++){
		for(i2=0;i2<5;i2++){
			for(i3=0;i3<5;i3++){
				for(i4=0;i4<5;i4++){
					for(i5=0;i5<5;i5++){
						a.x[i1][i2][i3][i4][i5]+=b.x[i5][i1][i2][i3][i4];
						b.x[i5][i1][i2][i3][i4]=a.x[i1][i2][i3][i4][i5]+
						    c.x[i2][i3][i1][i4][i5];
					}
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						printf("   A[%02d][%02d][%02d][%02d][%02d] ==>",i,j,k,l,m);
						printf(" %16.7f \n",a.x[i][j][k][l][m]);
					}
				}
			}
		}
	}
	for(m=0;m<5;m++){
		for(l=0;l<5;l++){
			for(k=0;k<5;k++){
				for(j=0;j<5;j++){
					for(i=0;i<5;i++){
						printf("   B[%02d][%02d][%02d][%02d][%02d] ==>",i,j,k,l,m);
						printf(" %16.7f \n",b.x[i][j][k][l][m]);
					}
				}
			}
		}
	}
	exit (0);
}


#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	static unsigned long int l[10][10][10];
	float a[10][10][10],b[10][10][10],c[10][10][10];
	long int i,j,k,m=0;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				m++;
				if(m<=250){
					l[i][j][k]=1;
				}
				else if(m<=750){
					l[i][j][k]=0;
				}
				else l[i][j][k]=1;
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a[i][j][k]=1.0;
				b[i][j][k]=2.0;
				c[i][j][k]=3.0;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				if(l[i][j][k]==1){
					a[i][j][k]=b[i][j][k]+c[i][j][k];
				}
				c[i][j][k]=a[i][j][k]*2.0;
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   C[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",c[i][j][k]);
			}
		}
	}
	exit (0);
}

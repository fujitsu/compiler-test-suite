#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	static float a[10][10],b[10][10],c[10][10],d[10][10];
	long int i,j,ii,jj;
	float s;
	s=1.0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=s;
			b[i][j]=s*2.0;
			c[i][j]=s+1.0;
			d[i][j]=s-1.0;
		}
	}
	printf("  **** 2334 **** \n");
	for(i=0;i<10;i++){
		for(j=1;j<8;j++){
			s=c[i][j]-d[i][j];
			if (s == 0.0) goto LBL_20;
			if (s >  0.0)
				a[i][j+1]=b[i][j+1]+(c[i][j]-d[i][j]);
				else
				a[i][j+1]=b[i][j+1]+(d[i][j]-c[i][j]);
			b[i][j]=c[i][j]+d[i][j]-a[i][j];
			c[i][j]=(d[i][j]-b[i][j])*2.0;
			d[i][j]=a[i][j]+(b[i][j]-c[i][j])/2.0;
			for(i=0;i<10;i++){
				for(j=0;j<10;j++){
					printf(" a[%ld][%ld] => %f",i,j,a[i][j]);
					printf("       b[%ld][%ld] => %f\n",i,j,b[i][j]);
				}
			}
			for(i=0;i<10;i++){
				for(j=0;j<10;j++){
					printf(" c[%ld][%ld] => %f",i,j,c[i][j]);
					printf("       d[%ld][%ld] => %f\n",i,j,d[i][j]);
				}
			}
LBL_20:
			;
		}
	}
	for(i=4;i<8;i++){
		for(j=2;j<7;j++){
			b[i][j]=(a[i][j+1]-d[i][j])*c[i][j];
			c[i][j]=b[i][j-1]+d[i][j]-a[i][j];
			a[i][j]=(c[i][j]+d[i][j])/2.0;
			for(ii=0;ii<10;ii++){
				for(jj=0;jj<10;jj++){
					printf(" a[%ld][%ld] => %f",ii,jj,a[ii][jj]);
					printf("       b[%ld][%ld] => %f\n",ii,jj,b[ii][jj]);
				}
			}
			d[i+1][j+1]=a[i][j]*b[i][j]-c[i][j];
			printf("---> %d %d %d %d\n",i+1,j+1,i,j);
		}
	}
	exit (0);
}

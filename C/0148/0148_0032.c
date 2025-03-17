#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10][10],b[10][10][10],c[10][10][10],d[10][10][10];
	long int n=2,k=3,m=10,i,j;
	float s=1.0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a[i][j][k]=s;
				b[i][j][k]=s+1.0;
				c[i][j][k]=s+2.0;
				d[i][j][k]=s/2.0;
				if (s>700.0)
					s--;
					else
					s++;
			}
		}
	}
	for(i=m-k+n-1;i>=0;i-=1){
		for(j=0;j<10;j+=n){
			for(k=0;k<m;k++){
				a[i][j][k]=b[i][j][k]+c[i][j][k];
				b[i][j][k]=c[i][j][k]*(a[i][j][k]/5.0);
				c[i][j][k]=a[i][j][k]-d[i][j][k];
			}
		}
	}
	for(i=0;i<10;i+=m-n*4){
		for(j=0;j<10;j+=m-n){
			for(k=0;k<10;k++){
				a[i][j][k]=b[i][j][k]-d[i][j][k];
				d[i][j][k]=(a[i][j][k]+c[i][j][k])/2.0;
			}
		}
	}
	printf("  **** 2331 **** \n");
	for(i=0;i<2;i++){
		for(j=2;j<5;j++){
			for(k=0;k<5;k++){
				printf(" a[%ld][%ld][%ld] => %12.3f\n",i,j,k,a[i][j][k]);
			}
		}
	}
	for(i=1;i<3;i++){
		for(j=1;j<4;j++){
			for(k=1;k<6;k++){
				if (b[i][j][k]-(float)(int)(b[i][j][k])>=0.5)
				{
					b[i][j][k] = b[i][j][k]+1.0;
				}
				b[i][j][k] = (float)(int)(b[i][j][k]);
				printf(" b[%ld][%ld][%ld] => %12.3f\n",i,j,k,b[i][j][k]);
			}
		}
	}
	for(i=2;i<4;i++){
		for(j=3;j<6;j++){
			for(k=2;k<7;k++){
				printf(" c[%ld][%ld][%ld] => %12.3f\n",i,j,k,c[i][j][k]);
			}
		}
	}
	for(i=3;i<5;i++){
		for(j=4;j<7;j++){
			for(k=3;k<8;k++){
				printf(" d[%ld][%ld][%ld] => %12.3f\n",i,j,k,d[i][j][k]);
			}
		}
	}
	exit (0);
}

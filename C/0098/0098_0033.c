#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10][10];
} a,b,c,d;
int main(){
	long int n=2,k=3,m=10,i,j;
	float s=1.0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a.x[i][j][k]=s;
				b.x[i][j][k]=s+1.0;
				c.x[i][j][k]=s+2.0;
				d.x[i][j][k]=s/2.0;
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
				a.x[i][j][k]=b.x[i][j][k]+c.x[i][j][k];
				b.x[i][j][k]=c.x[i][j][k]*(a.x[i][j][k]/5.0);
				c.x[i][j][k]=a.x[i][j][k]-d.x[i][j][k];
			}
		}
	}
	for(i=0;i<10;i+=m-n*4){
		for(j=0;j<10;j+=m-n){
			for(k=0;k<10;k++){
				a.x[i][j][k]=b.x[i][j][k]-d.x[i][j][k];
				d.x[i][j][k]=(a.x[i][j][k]+c.x[i][j][k])/2.0;
			}
		}
	}
	printf("  ****  **** \n");
	for(i=0;i<2;i++){
		for(j=2;j<5;j++){
			for(k=0;k<5;k++){
				printf(" a[%ld][%ld][%ld] => %12.3f\n",i,j,k,a.x[i][j][k]);
			}
		}
	}
	for(i=1;i<3;i++){
		for(j=1;j<4;j++){
			for(k=1;k<6;k++){
				if (b.x[i][j][k]-(float)(int)(b.x[i][j][k])>=0.5)
				{
					b.x[i][j][k] = b.x[i][j][k]+1.0;
				}
				b.x[i][j][k] = (float)(int)(b.x[i][j][k]);
				printf(" b[%ld][%ld][%ld] => %12.3f\n",i,j,k,b.x[i][j][k]);
			}
		}
	}
	for(i=2;i<4;i++){
		for(j=3;j<6;j++){
			for(k=2;k<7;k++){
				printf(" c[%ld][%ld][%ld] => %12.3f\n",i,j,k,c.x[i][j][k]);
			}
		}
	}
	for(i=3;i<5;i++){
		for(j=4;j<7;j++){
			for(k=3;k<8;k++){
				printf(" d[%ld][%ld][%ld] => %12.3f\n",i,j,k,d.x[i][j][k]);
			}
		}
	}
	exit (0);
}

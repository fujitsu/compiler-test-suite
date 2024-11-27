#include <stdlib.h>
#include <math.h>
#include <stdio.h>

static struct st1{
       float x[10][10];
} a,b,c,d; 
int main(){
	long int i,j,ii,jj;
	float s;
	s=1.0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a.x[i][j]=s;
			b.x[i][j]=s*2.0;
			c.x[i][j]=s+1.0;
			d.x[i][j]=s-1.0;
		}
	}
	printf("  ****  **** \n");
	for(i=0;i<10;i++){
		for(j=1;j<8;j++){
			s=c.x[i][j]-d.x[i][j];
			if (s == 0.0) goto LBL_20;
			if (s >  0.0)
				a.x[i][j+1]=b.x[i][j+1]+(c.x[i][j]-d.x[i][j]);
				else
				a.x[i][j+1]=b.x[i][j+1]+(d.x[i][j]-c.x[i][j]);
			b.x[i][j]=c.x[i][j]+d.x[i][j]-a.x[i][j];
			c.x[i][j]=(d.x[i][j]-b.x[i][j])*2.0;
			d.x[i][j]=a.x[i][j]+(b.x[i][j]-c.x[i][j])/2.0;
			for(i=0;i<10;i++){
				for(j=0;j<10;j++){
					printf(" a[%ld][%ld] => %f",i,j,a.x[i][j]);
					printf("       b[%ld][%ld] => %f\n",i,j,b.x[i][j]);
				}
			}
			for(i=0;i<10;i++){
				for(j=0;j<10;j++){
					printf(" c[%ld][%ld] => %f",i,j,c.x[i][j]);
					printf("       d[%ld][%ld] => %f\n",i,j,d.x[i][j]);
				}
			}
LBL_20:
			;
		}
	}
	for(i=4;i<8;i++){
		for(j=2;j<7;j++){
			b.x[i][j]=(a.x[i][j+1]-d.x[i][j])*c.x[i][j];
			c.x[i][j]=b.x[i][j-1]+d.x[i][j]-a.x[i][j];
			a.x[i][j]=(c.x[i][j]+d.x[i][j])/2.0;
			for(ii=0;ii<10;ii++){
				for(jj=0;jj<10;jj++){
					printf(" a[%ld][%ld] => %f",ii,jj,a.x[ii][jj]);
					printf("       b[%ld][%ld] => %f\n",ii,jj,b.x[ii][jj]);
				}
			}
			d.x[i+1][j+1]=a.x[i][j]*b.x[i][j]-c.x[i][j];
			printf("---> %d %d %d %d\n",i+1,j+1,i,j);
		}
	}
	exit (0);
}

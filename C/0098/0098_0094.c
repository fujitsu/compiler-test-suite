#include <stdlib.h>
#include <math.h>
#include <stdio.h>

static struct st3{
         unsigned long int y[10][10][10];
} l;
struct st2{
         float x[10][10][10];
} a,b,c;
int main()
{
	long int i,j,k,m=0;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				m++;
				if(m<=250){
					l.y[i][j][k]=1;
				}
				else if(m<=750){
					l.y[i][j][k]=0;
				}
				else l.y[i][j][k]=1;
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a.x[i][j][k]=1.0;
				b.x[i][j][k]=2.0;
				c.x[i][j][k]=3.0;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				if(l.y[i][j][k]==1){
					a.x[i][j][k]=b.x[i][j][k]+c.x[i][j][k];
				}
				c.x[i][j][k]=a.x[i][j][k]*2.0;
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   C[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",c.x[i][j][k]);
			}
		}
	}
	exit (0);
}


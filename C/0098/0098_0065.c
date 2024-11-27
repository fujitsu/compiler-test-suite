#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10][6][6];
} a;
struct st2{
        float x[10][6];
} b;
struct st3{
        float x[10];
} c; 
int main()
{
	long int n=10;
	long int i,j,k;
	float s;
	for(i=0;i<9;i++){
                c.x[i]=i+1;
        }
	c.x[9]=0;
	for(i=0;i<10;i++){
		s=(i+1)+c.x[i];
		for(j=0;j<6;j++){
			b.x[i][j]=s*s;
			for(k=0;k<6;k++){
				a.x[i][j][k]=s/8.0;
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("   B[%d][%d] ==>",i,j);
			printf(" %16.7f \n",b.x[i][j]);
		}
	}
	for(i=0;i<10;i++){
		s=(i+1)+c.x[i];
		for(j=0;j<6;j++){
			b.x[i][j]=s*s-2;
			for(k=0;k<6;k++){
				a.x[i][j][k]=s/8.0-3;
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a.x[i][j][k]);
			}
		}
	}
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("   B[%d][%d] ==>",i,j);
			printf(" %16.7f \n",b.x[i][j]);
		}
	}
	exit (0);
}

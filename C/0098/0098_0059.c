#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10][5];
} a;
struct st2{
        float x[5];
} b;
int main()
{
	float s;
	long int i,j,k;
	for(i=0;i<5;i++){
	        b.x[i]=0.0;
        }	  
	for(i=0,j=0;i<10;i++){
		a.x[i][j]=3.0;
	}
	for(i=0,j=1;i<10;i++){
		a.x[i][j]=4.0;
	}
	for(i=0,j=2;i<10;i++){
		a.x[i][j]=5.0;
	}
	for(i=0,j=3;i<10;i++){
		a.x[i][j]=6.0;
	}
	for(i=0,j=4;i<10;i++){
		a.x[i][j]=7.0;
	}
	for(i=0;i<5;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a.x[j+1][i]=a.x[j][i]+s;
		}
	}
	k=0;
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	for(i=0;i<5;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a.x[j+1][i]=a.x[j][i]-(j+1);
		}
		b.x[i]=s*s;
	}
	k=0;
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<5;i++){
		printf("  B[%d]==>%9.1f  ",i,b.x[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	exit (0);
}

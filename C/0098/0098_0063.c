#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10][6];
} a;
struct st2{
        float x[6];
} b;
int main()
{
	long int i,j,k;
	float s;
	for(i=0;i<6;i++){
	        b.x[i]=0.0;
	}
	for(i=0,j=0;i<10;i++){
		a.x[i][j]=3.0;
	}
	for(i=0,j=1;i<10;i++){
		a.x[i][j]=4.0;
	}
	for(i=0,j=2;i<5;i++){
		a.x[i][j]=4.0;
	}
	for(i=5,j=2;i<10;i++){
		a.x[i][j]=5.0;
	}
	for(i=0,j=3;i<10;i++){
		a.x[i][j]=5.0;
	}
	for(j=4;j<6;j++){
		for(i=0;i<10;i++){
			a.x[i][j]=6.0;
		}
	}
	for(i=0;i<6;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a.x[j+1][i]=a.x[j][i]+s;
			s=a.x[j+1][i];
		}
		b.x[i]=s;
	}
	k=0;
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<6;i++){
		printf("  B[%d]==>%f  ",i,b.x[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	for(i=0;i<6;i++){
		s=i+1;
		if(i>2) b.x[i]=s;
		for(j=0;j<9;j++){
			a.x[j+1][i]=a.x[j][i]-(j+1);
		}
		s=b.x[i]/2.0;
		b.x[i]=s*s;
	}
	k=0;
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<6;i++){
		printf("  B[%d]==>%f  ",i,b.x[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	exit (0);
}

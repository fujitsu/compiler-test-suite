#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB1(float X);
int SUB2(float X, float Y);
#define A1(i,j) a1[i-1][j-1]
#define B1(i,j) b1[i-1][j-1]
#define C1(i,j) c1[i-1][j-1]
#define A2(i,j) a2[i-1][j-1]
#define B2(i,j) b2[i-1][j-1]
#define C2(i,j) c2[i-1][j-1]
float a1[20][20],b1[20][20],c1[20][20];
float a2[20][20],b2[20][20],c2[20][20];
int main()
{
	union
	  {
		float A1[1][1];
		float A2[1][1];
	} aarea;
	union
	  {
		float C1[20][20];
		float C2[20][20];
	} carea;
	long int NN=19;
	long int i,j,n=0;
	float k;
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			c1[i][j]=1.0;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			b2[i][j]=5.0;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			a1[i][j]=1.0;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			b1[i][j]=2.0;
		}
	}
	for(i=2;i<=NN;i++){
		for(j=2;j<=NN;j++){
			A1(i,j)=B1(i,j)+C1(i,j)-(float)(j);
			SUB2(A2(i,j),C2(i,j));
			B2(i,j)=B1(i,j)+C2(i,j);
		}
		for(j=2;j<=NN;j++){
			C2(i,1)=C2(i,1)+A1(i,j);
			SUB1(C1(i-1,j));
			B1(i,j)=A2(i,j)*2.-B2(i,j);
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" A1= %g ",A1(i,j));
			n=n+1;
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" B1= %g ",B1(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" B2= %g ",B2(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" C1= %g ",C1(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(i=2;i<=NN;i++){
		for(j=2;j<=NN;j++){
			A1(i,j)=B1(i,j)+C1(i,j)-(float)(j);
			SUB2(A2(i,j),C2(i,j));
			B2(i,j)=B1(i,j)+C2(i,j);
		}
		for(j=2;j<=NN;j++){
			C2(i,1)=C2(i,1)+A1(i,j);
			SUB1(C1(i-1,j));
			B1(i,j)=A2(i,j)*2.-B2(i,j);
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" A1= %g ",A1(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" B1= %g ",B1(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" B2= %g ",B2(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			n=n+1;
			printf(" C1= %g ",C1(i,j));
			k=n%4;
			if(k==0)
				printf("\n");
		}
	}
	exit (0);
}
int SUB1(X)
float X;
{
	X=X+1.0;
	return 0;
}
int SUB2(X,Y)
float X,Y;
{
	X=X+1.0;
	Y=Y+1.0;
	return 0;
}

#include <stdlib.h>

#include <stdio.h>
#include <math.h>
#include <string.h>
int SUB();
int INIT();
#define A1(i) a1[i-1]
#define A2(i) a2[i-1]
#define A3(i) a3[i-1]
#define B1(i) b1[i-1]
#define B2(i) b2[i-1]
#define B3(i) b3[i-1]
#define C1(i) c1[i-1]
#define C2(i) c2[i-1]
#define C3(i) c3[i-1]
#define X1(i,j) x1[i-1][j-1]
#define L(i) l[i-1]
#define R(i) r[i-1]
float a1[2048],a2[2048],a3[2048];
float b1[2048],b2[2048],b3[2048];
float c1[2048],c2[2048],c3[2048];
float x1[100][100];
unsigned long int l[2048];
long int r[100];
long int NN;
int I,J;
int n={
	0};
int main()
{
	INIT();
	for(I=1;I<=2047;I+=2){
		L(I) = 1.0;
		L(I+1) = 0.0;
	}
	for(I=1;I<=99;I+=2){
		R(I) = 3;
		R(I+1) = -1;
	}
	INIT();
	for(I=1;I<=1024;I++){
		if (A1(I) > 500)
		{
			A1(I) = B1(I) + C1(I);
		}
	}
	printf(" %g %g %g %g %g \n",A1(1),A1(2),A1(3),A1(4),A1(5));
	INIT();
	for(I=1;I<=2048;I++){
		if (L(I))
		{
			A1(I) = B1(I) + C3(I);
			B1(I) = C1(I) + C2(I);
		}
	}
	printf(" %g %g %g %g %g \n",A1(1),A1(2),A1(3),A1(4),A1(5));
	printf(" %g %g %g %g %g \n",B1(1),B1(2),B1(3),B1(4),B1(5));
	INIT();
	for(I=1;I<=900;I++){
		A1(I) = B1(I) + C1(I);
	}
	printf(" %g %g %g %g %g \n",A1(1),A1(2),A1(3),A1(4),A1(5));
	INIT();
	for(I=1;I<=1024;I++){
		A1(I) = A2(I) + A3(I);
		B1(I) = B2(I) * B3(I);
		C1(I) = A1(I) / 2.0;
	}
	printf(" %g %g %g %g %g \n",A1(1),A1(2),A1(3),A1(4),A1(5));
	printf(" %g %g %g %g %g \n",B1(1),B1(2),B1(3),B1(4),B1(5));
	printf(" %g %g %g %g %g \n",C1(1),C1(2),C1(3),C1(4),C1(5));
	INIT();
	for(I=1;I<=2000;I++){
		A1(I) = A2(I) + A3(I);
		B1(I) = B2(I) * B3(I);
		C1(I) = A1(I) / 2.0;
	}
	printf(" %g %g %g %g %g \n",A1(1),A1(2),A1(3),A1(4),A1(5));
	printf(" %g %g %g %g %g \n",B1(1),B1(2),B1(3),B1(4),B1(5));
	printf(" %g %g %g %g %g \n",C1(1),C1(2),C1(3),C1(4),C1(5));
	INIT();
	for(I=1;I<=NN;I++){
		for(J=1;J<=20;J++){
			X1(I,J) = 4.0;
		}
	}
	printf(" %g %g %g %g %g \n",X1(1,1),X1(1,2),X1(1,3),X1(1,4),X1(1,5));
	INIT();
	for(I=1;I<=NN;I++){
		for(J=1;J<=3;J++){
			X1(I,J) = 5.0;
		}
	}
	printf(" %g %g %g %g %g \n",X1(1,1),X1(1,2),X1(1,3),X1(1,4),X1(1,5));
	INIT();
	for(I=1;I<=NN;I++){
		for(J=1;J<=30;J++){
			X1(I,J) = 5.0;
		}
	}
	printf(" %g %g %g %g %g \n",X1(1,1),X1(2,2),X1(3,3),X1(4,4),X1(5,5));
	INIT();
	for(I=1;I<=NN;I++){
		A1(I) = 0.0;
		A1(I+10) = B1(I);
		B1(I) = 0.0;
	}
	printf(" %g %g %g %g",A1(1),A1(2),A1(11),A1(12));
	printf(" %g %g %g \n",B1(1),B1(2),B1(3));
	INIT();
	for(J=1;J<=10;J++){
		A1(J) = 5.0;
		for(I=21;I<=40;I++){
			B1(I) = A1(I);
		}
	}
	printf(" %g %g %g",A1(1),A1(2),A1(3));
	printf(" %g %g %g \n",B1(1),B1(2),B1(3));
	INIT();
	for(I=1;I<=100;I++){
		A1(I) = A2(I) + A3(I);
		B1(I) = B2(I) + B3(I);
	}
	A1(100) = 7.0;
	B1(100) = 7.0;
	for(I=1;I<=2048;I++){
		printf(" %g ",A1(I));
		n=I%10;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(I=1;I<=2048;I++){
		printf(" %g ",B1(I));
		n=I%10;
		if(n==0)printf("\n");
	}
	printf("\n");
	INIT();
	for(I=1;I<=100;I++){
		A1(I) = A2(I) + A3(I);
		B1(I) = B2(I) + B3(I);
		A1(100) = 7.0;
		B1(100) = 7.0;
	}
	for(I=1;I<=2048;I++){
		printf(" %g ",A1(I));
		n=I%10;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(I=1;I<=2048;I++){
		printf(" %g ",B1(I));
		n=I%10;
		if(n==0)printf("\n");
	}
	printf("\n");
	INIT();
	for(J=1;J<=100;J++){
		B2(J) = 0.0;
		for(I=1;I<=100;I++){
			A1(I) = A1(I) + A3(I);
			B1(I) = B2(I) + B3(I);
		}
	}
	for(I=1;I<=2048;I++){
		printf(" %g ",A1(I));
		n=I%8;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(I=1;I<=2048;I++){
		printf(" %g ",B1(I));
		n=I%8;
		if(n==0)printf("\n");
	}
	printf("\n");
	SUB();
	INIT();
	for(I=1;I<=10;I++){
		if (L(I))
		{
			A1(I) = A2(I) * A3(I);
			B1(I) = B2(I) + B3(I);
		}
	}
	INIT();
	for(I=1;I<=10;I++){
		if (R(I) > 0.0)
		{
			A1(I) = A2(I) * A3(I);
			B1(I) = B2(I) + B3(I);
		}
	}
	exit (0);
}
#define A1(i) a1[i-1]
#define A2(i) a2[i-1]
#define A3(i) a3[i-1]
#define B1(i) b1[i-1]
#define B2(i) b2[i-1]
#define B3(i) b3[i-1]
#define C1(i) c1[i-1]
#define C2(i) c2[i-1]
#define C3(i) c3[i-1]
int INIT()
{
	for(I=1;I<=2048;I++){
		A1(I) = 1.0;
		A2(I) = 2.0;
		A3(I) = 3.0;
		B1(I) = 1.5;
		B2(I) = 2.5;
		B3(I) = 3.5;
		C1(I) = 3.5;
		C2(I) = 5.5;
		C3(I) = 6.5;
	}
	NN = 100;
}
int SUB()
{
	float k[100],t[100],u[100];
	int i ;
	for(i=1;i<100;i++){
		t[i] = 1.0;
		u[i] = 2.0;
	}
	for(i=1;i<100;i++){
		k[i] = t[i] + u[i];
	}
	for(i=1;i<100;i++){
		printf(" %g ",k[i]);
		n=I%20;
		if(n==0)printf("\n");
	}
	printf("\n");
}

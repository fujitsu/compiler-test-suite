#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV1(i) dv1[i-1]
#define DV2(i) dv2[i-1]
#define DV3(i) dv3[i-1]
#define EV1(i) ev1[i-1]
#define EV2(i) ev2[i-1]
#define EV3(i) ev3[i-1]
#define NV1(i) nv1[i-1]
int main()
{
	float ev1[10],ev2[10],ev3[10];
	double dv1[10],dv2[10],dv3[10];
	float EMX=-99999999.;
	COMPLEX8 cv1[10],cv2[10],cv3[10];
	long int J=1,K=1;
	long int I,LIX;
	long int nv1[10];
	int i;
	for(i=0;i< 10;i++) nv1[i]=2;
	for(i=0;i<=1;i++) dv1[i]=10.;
	for(i=2;i<=9;i++) dv1[i]=1.5;
	for(i=0;i<=2;i++) dv2[i]=1.5;
	for(i=3;i<=7;i++) dv2[i]=-2.;
	for(i=8;i<=9;i++) dv2[i]=3.75;
	for(i=0;i<=6;i++) dv3[i]=3.75;
	for(i=7;i<=9;i++) dv3[i]=0;
	ev1[0]=2.;
	for(i=1;i<=2;i++) ev1[i]=3.5;
	for(i=3;i<=9;i++) ev1[i]=6.;
	for(i=0;i<=4;i++) ev2[i]=6.;
	for(i=5;i<=9;i++) ev2[i]=-6;
	for(i=0;i<=4;i++) ev3[i]=1.;
	for(i=5;i<=8;i++) ev3[i]=5.;
	ev3[9]=2.;
	for(I=1;I<=10;I++){
		cv1[I-1].real=DV1(I)*EV2(I);
		cv1[I-1].imag=-DV3(I);
		cv2[I-1].real=DV3(I)/EV1(I)-EV2(11-I)-(EV2(I)-EV1(I));
		cv2[I-1].imag=EV2(I)-EV1(I);
		cv3[I-1].real=cv2[I-1].real*cv2[I-1].real-(cv2[I-1].imag*cv2[I-1].imag);
		cv3[I-1].imag=cv2[I-1].real*cv2[I-1].imag+cv2[I-1].imag*cv2[I-1].real;
	}
	for(I=1;I<=10;I++)
	{
		if (I >  9) continue;
		if (I != 1)
		{
			DV1(I)=DV2(I-1)/I;
			NV1(I)=I*2+1;
			DV2(I)=EV1(I)*EV2(I);
			DV2(9)=DV2(9)+DV2(I);
			EV1(I+1)=cv1[I-1].real*cv2[I-1].imag+cv1[I-1].imag*cv2[I-1].real;
			J=J-5;
			NV1(I)=J+NV1(I);
			cv2[I].real=999.;
			cv2[I].imag=999.;
		}
	}
	printf("DV1\n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV1(i));
		if(i%5 == 0) printf("\n");
	}
	printf("DV2\n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV2(i));
		if(i%5 == 0) printf("\n");
	}
	printf("EV1\n");
	for(i=1;i<=10;i++){
		printf(" %g ",EV1(i));
		if(i%5 == 0) printf("\n");
	}
	printf("CV2\n");
	for(i=0;i<=9;i++){
		printf(" %g,%g",cv2[i].real,cv2[i].imag);
		if(i%5 == 4) printf("\n");
	}
	printf("NV1\n");
	for(i=1;i<=10;i++){
		printf(" %ld",NV1(i));
		if(i%5 == 0) printf("\n");
	}
	K=I-10;
	for(I=1;I<=10;I++){
		if (I <= 9){
			if (I == 1) continue;
			DV1(I)=DV2(I-1)/I;
			DV2(I)=EV1(I)*EV2(I);
			DV2(1)=DV2(1)+DV2(I);
			NV1(K)=J+NV1(K+1)*K;
			EV1(I+1)=cv1[I-1].real*cv2[I-1].imag+cv1[I-1].imag*cv2[I-1].real;
			if (EMX <  EV3(I)){
				EMX=EV3(I);
				LIX=EV1(I)*EV1(I);
			}
			J=J-5;
			K=K+1;
			cv2[I].real=999.;
			cv2[I].imag=999.;
		}
	}
	printf("DV1\n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV1(i));
		if(i%5 == 0) printf("\n");
	}
	printf("DV2\n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV2(i));
		if(i%5 == 0) printf("\n");
	}
	printf("EV1\n");
	for(i=1;i<=10;i++){
		printf(" %g ",EV1(i));
		if(i%5 == 0) printf("\n");
	}
	printf("CV2\n");
	for(i=0;i<=9;i++){
		printf(" %g,%g",cv2[i].real,cv2[i].imag);
		if(i%5 == 4) printf("\n");
	}
	printf("NV1\n");
	for(i=1;i<=10;i++){
		printf(" %ld",NV1(i));
		if(i%5 == 0) printf("\n");
	}
	exit (0);
}

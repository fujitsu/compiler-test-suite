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
long int nv1[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	float ev1[10],ev2[10],ev3[10];
	double dv1[10],dv2[10],dv3[10];
	float EMX=-99999999.;
	COMPLEX8 cv1[10],cv2[10],cv3[10];
	long int J=1,K=1,LIX=999;
	long int I;
	int i;
	for(i=0;i<10;i++){
		if(i<2) dv1[i]=10.;
		if(i>=2&&i<=9) dv1[i]=1.5;
	}
	for(i=0;i<10;i++){
		if(i<3) dv2[i]=1.5;
		if(i>=3&&i<=7) dv2[i]=-2.;
		if(i==8||i==9) dv2[i]=3.75;
	}
	for(i=0;i<10;i++){
		if(i<7) dv3[i]=3.75;
		if(i>=7&&i<=9) dv3[i]=0;
	}
	for(i=0;i<10;i++){
		ev1[0]=2.;
		if(i==1||i==2) ev1[i]=3.5;
		if(i>=3&&i<=9) ev1[i]=6.;
	}
	for(i=0;i<10;i++){
		if(i<5) ev2[i]=6.;
		if(i>=5&&i<=9) ev2[i]=-6.;
	}
	for(i=0;i<10;i++){
		if(i<5) ev3[i]=1;
		if(i>=5&&i<=8) ev3[i]=5;
		ev3[9]=2.;
	}
	for(I=1;I<=10;I++){
		cv1[I-1].real=DV1(I)*EV2(I);
		cv1[I-1].imag=-DV3(I);
		cv2[I-1].real=DV3(I)/EV1(I)-EV2(11-I)-(EV2(I)-EV1(I));
		cv2[I-1].imag=EV2(I)-EV1(I);
		cv3[I-1].real=cv2[I-1].real*cv2[I-1].real-(cv2[I-1].imag*cv2[I-1].imag);        
		cv3[I-1].imag=cv2[I-1].real*cv2[I-1].real+cv2[I-1].imag*cv2[I-1].imag;
	}
	for(I=2;I<=10;I++){
		if(I >  9) continue;
		if(I != 1) {
			DV1(I)=DV2(I-1)/I;
			DV2(I)=EV1(I)*EV2(I);
			DV2(1)=DV2(1)+DV2(I);
			EV1(I+1)=cv1[I-1].real*cv2[I-1].imag+cv1[I-1].imag*cv2[I-1].real;
			if(EV1(I) >  1.0) goto LBL_101;
			J=J-5;
			K=K+1;
			NV1(K)=J;
			continue;
LBL_101:
			;
			cv2[I].real=999.;
			cv2[I].imag=999.;
		}
	}
	for(i=1;i<=10;i++){
		printf("%dtimes\n",i);
		printf("DV1(i)=%g,DV2(i)=%g\n",DV1(i),DV2(i));
		printf("EV1(i)=%g\n",EV1(i));
	
		printf("cv2[i].real=%g,cv2[i].imag=%g\n",cv2[i-1].real,cv2[i-1].imag);
		printf("NV1(i)=%ld\n",NV1(i));
	}
	K=I-11;
	for(I=2;I<=10;I++){
		if(I <= 9){
			if(I == 1) continue;
			DV1(I)=DV2(I-1)/I;
			DV2(I)=EV1(I)*EV2(I);
			DV2(1)=DV2(1)+DV2(I);
			EV1(I-1)=cv1[I-1].real*cv2[I-1].imag+(cv1[I-1].imag*cv2[I-1].real);
			if(EMX <  EV3(I)){
				EMX=EV3(I);
				LIX=EV3(I-1)*EV3(I-1);
			}
			if(EV1(I) >  1.) goto LBL_201;
			J=J-5;
			K=K+1;
			NV1(K)=J;
			continue;
LBL_201:
			;
			cv2[I].real=999.;
			cv2[I].imag=999.;
		}
	}
	for(i=2;i<=10;i++){
		printf("%dtimes\n",i);
		printf("DV1(i)=%g,DV2(i)=%g\n",DV1(i),DV2(i));
		printf("EV1(i)=%g\n",EV1(i));
	
		printf("cv2[i].real=%g,cv2[i].imag=%g\n",cv2[i-1].real,cv2[i-1].imag);
		printf("NV1(i)=%ld\n",NV1(i));
	}
	printf("EMX=%g\n",EMX);
	printf("LIX=%ld\n",LIX);
	exit (0);
}

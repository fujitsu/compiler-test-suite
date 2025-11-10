#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) udata1.da10[i-1]
#define DA20(i) udata2.da20[i-1]
#define DA30(i) udata5.da30[i-1]
#define DA40(i) da40[i-1]
#define DC10(i) udata1.dc10[i-1]
#define DC30(i) udata2.dc30[i-1]
#define DC20(i) dc20[i-1]
#define CD10(i) udata3.cd10[i-1]
#define CD20(i) udata4.cd20[i-1]
#define CD30(i) udata6.cd30[i-1]
#define COM10(i) udata5.com10[i-1]
#define COM20(i) udata4.com20[i-1]
#define COM30(i) udata6.com30[i-1]
#define CDX      udata3.cdx
double da40[20];
double dc20[20],DX,DY;
COMPLEX16 CDY;
union{
	double da10[20];
	double dc10[20];
}udata1;
union{
	double da20[20];
	double dc30[20];
}udata2;
union{
	COMPLEX16 cdx;
	COMPLEX16 cd10[20];
}udata3;
union{
	COMPLEX16 cd20[20];
	COMPLEX16 com20[20];
}udata4;
union{
	COMPLEX16 com10[20];
	double    da30[20];
}udata5;
union{
	COMPLEX16 com30[20];
	COMPLEX16 cd30[20];
}udata6;
int main()
{
	long int N1=10;
	long int N2=20;
	long int J,I,K,i,j,n;
	double DX1,DY1,DZ,dz,DX2,DY2;
	DX=0.5;
	DY=1.5;
	CDX.dreal=1.0;
	CDX.dimag=-1.0;
	CDY.dreal=2.1;
	CDY.dimag=-1.2;
	for(I=1;I<=20;I++){
		COM10(I).dreal=CDX.dreal+CDY.dreal;
		COM10(I).dimag=CDX.dimag+CDY.dimag;
		COM20(I).dreal=CDX.dreal*CDY.dreal
		    -CDX.dimag*CDY.dimag;
		COM20(I).dimag=CDX.dreal*CDY.dimag
		    +CDX.dimag*CDY.dreal;
		COM30(I).dreal=CDY.dreal-CDX.dreal;
		COM30(I).dimag=CDY.dimag-CDX.dimag;
LBL_5:
		;
	}
	for(I=1;I<=20;I++){
		DA10(I)=(double)(I);
		DA20(I)=1.0;
		DA30(I)=2.0;
		DA40(I)=3.0;
		DC20(I)=DA20(I)+DA40(I);
		CD10(I).dreal=1.0;
		CD10(I).dimag=2.0;
		CD20(I).dreal=2.0;
		CD20(I).dimag=3.0;
		CD30(I).dreal=1.0;
		CD30(I).dimag=4.0;
LBL_10:
		;
	}
	for(J=2;J<=N2;J++){
		DX1=DX*DA10(J-1);
		DY1=DY*DA30(J+N1);
		if ( DX1  >   DY1 )
		{
			CD20(J).dreal=DX1;
			CD20(J).dimag=DY1;
			DA40(J)=DX1-DY1;
		}
		else
		{
			CD20(J).dreal=DY1;
			CD20(J).dimag=DX1;
			DA20(J)=DY1-DX1;
		}
		CDX.dreal=CDX.dreal+CD30(J).dreal;
		CDX.dimag=CDX.dimag+CD30(J).dimag;
		CD10(J).dreal=CD20(J).dreal+DX;
		CD10(J).dimag=CD20(J).dimag+DY;
		DX1=(CD10(J).dreal)*2.0;
		DY1=(CD10(J).dimag)+2.0;
		DX1=(sqrt(DX1) > 0.0) ? (double)(int)((sqrt(DX1))+0.5)
		    :(double)(int)((sqrt(DX1))-0.5);
		DY1=(exp(DY1) > 0.0) ? (double)(int)((exp(DY1))+0.5)
		    :(double)(int)((exp(DY1))-0.5);
		CDY.dreal=CDY.dreal+DX1;
		CDY.dimag=CDY.dimag+DY1;
LBL_20:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf("  CDX = %g %g ",CDX.dreal,CDX.dimag);
	printf("  CDY = %g %g\n",CDY.dreal,CDX.dimag);
	for(i=1;i<=20;i++){
		printf("  (DA20)  %g ",DA20(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA40)  %g ",DA40(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD10) (%g, %g) ",CD10(i).dreal,CD10(i).dimag);
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD20) (%g, %g) ",CD20(i).dreal,CD20(i).dimag);
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	dz=(DA20(10) > 10.0 ) ? DA20(10):10.0;
	DZ=(1.0 > dz) ? 1.0 : dz;
	for(K=2;K<=N1;K++){
		for(I=2;I<=N1;I++){
			COM10(I-1).dreal=COM10(I-1).dreal+fabs(CD20(K).dreal-CD10(I).dreal);
			COM10(I-1).dimag=COM10(I-1).dimag+fabs(CD20(K).dimag-CD10(I).dimag);
			DX=DX+(fmod(DC30(K),DZ));
			DX1=(DA10(K) > DA20(I)) ? DA10(K):DA20(I);
			DY1=(DA30(I) < DA40(K)) ? DA30(I):DA40(K);
			DX2=(DA40(K) > DA30(I)) ? DA40(K):DA30(I);
			DY2=(DA10(I) < DA40(K)) ? DA10(I):DA40(K);
			DA10(K)=DX1-DY1;
			DY=DY+(DY2-DX2);
LBL_30:
			;
		}
	}
	printf("  ***  ** NO.2 *** \n");
	for(i=1;i<=20;i++){
		printf("  (COM10) (%g,%g)",COM10(i).dreal,COM10(i).dimag);
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA10)  %g ",DA10(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	printf("  DX =  %g ",DX);
	printf("  DY =  %g \n",DY);
	exit (0);
}

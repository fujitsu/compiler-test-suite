#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int bdata();
#define DA10(i) udata6.da10[i-1]
#define DA20(i) udata5.da20[i-1]
#define DA40(i) udata1.da40[i-1]
#define DA30(i) da30[i-1]
#define DB10(i,j) udata2.db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define CD40(i,j) cd40[i-1][j-1]
#define CD50(i,j) cd50[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define DARG1(i) udata1.darg1[i-1]
#define DARG2(i) udata2.darg2[i-1]
#define RARG1(i) udata4.rarg1[i-1]
#define RARG2(i) udata4.rarg2[i-1]
#define CDARG(i) udata3.cdarg[i-1]
#define CDX      udata3.cdx
#define DX       udata5.dx
#define DY       udata6.dy
double da30[20];
double db20[20][20];
COMPLEX16 cd10[20],cd20[20],cd30[20],cd40[20][20],cd50[20][20],cdx;
unsigned long int ld10[20],ld20[20][20];
long int INVK,IND;
double dx,dy;
COMPLEX16 cdarg[60];
union{
	double da40[20];
	double darg1[20];
}udata1;
union{
	double db10[20][20];
	double darg2[400];
}udata2;
union{
	COMPLEX16 cdx;
	COMPLEX16 cdarg[60];
}udata3;
union{
	float rarg1[20];
	float rarg2[400];
}udata4;
union{
	double dx;
	double da20[20];
}udata5;
union{
	double dy;
	double da10[20];
}udata6;
int main()
{
	long int N1=10;
	long int N2=20;
	long int I,K,J,N;
	long int i,j,n;
	bdata();
	for(i=0;i< 400;i++){
		udata4.rarg2[i]=1.0;
	}
	IND=1;
	for(I=2;I<=20;I++){
		DA10(IND)=DA20(I)*DA30(I);
		N=I;
		for(J=1;J<=N;J++){
			DB10(IND,J)=DB20(I,J)+DA40(J);
			DB20(I,J)=CD40(I,J).dimag;
LBL_20:
			;
		}
		DA20(I-1)=(DA10(IND) > DX) ? DA10(IND):DX;
		DY=DY+(DA30(I) < DA40(I)) ? DA30(I):DA40(I);
LBL_10:
		;
	}
	printf("  ****  ** NO.1 **** \n");
	printf("  (DA10)=\n");
	for(i=1;i<=20;i++){
		printf(" %g ",DA10(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	printf("  (DA20)=\n");
	for(i=1;i<=20;i++){
		printf(" %g ",DA20(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	printf("  (DB10)=\n");
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf(" %g ",DB10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	printf("  (DB20)=\n");
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf(" %g ",DB20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	printf("  DY = \n");
	printf(" %g ",DY);
	printf("\n");
	for(I=1;I<=N1;I++){
		IND=I+1;
		DA40(I)=DA10(IND)/DA40(IND)+DA30(I);
		if ( DA40(I)  >   DA20(IND) )
		{
			LD10(I)=!LD10(I);
			DX=(DA40(I)>0.0) ? (double)(int)(DA40(I)+0.5)
			    :(double)(int)(DA40(I)-0.5);
			DY=DA20(IND);
		}
		else
		{
			DX=DA20(IND);
			DY=(DA40(I)>0.0) ? (double)(int)(DA40(I)+0.5)
			    :(double)(int)(DA40(I)-0.5);
		}
		for(J=I;J<=N2;J++){
			CDX.dreal =DB10(I,J);
			CDX.dimag =DB20(IND,J);
			CD10(J).dreal=(CD20(IND).dreal*CDX.dreal
			    -CD20(IND).dimag*CDX.dimag)-CD10(J).dreal;
			CD10(J).dimag=(CD20(IND).dreal*CDX.dimag
			    +CD20(IND).dimag*CDX.dreal)-CD10(J).dimag;
LBL_40:
			;
		}
		DARG1(IND)=DX+DY;
		if ( LD10(I) ==1)
		{
			DX=fabs(DX-DY);
		}
		else
		{
			DY=fabs(DY-DX);
		}
		for(K=10;K<=N2;K++){
			if ( LD10(K) ==1)
			{
				CDARG(K).dreal=CD10(K).dreal*CD40(I,K).dreal
				    -CD10(K).dimag*CD40(I,K).dimag;
				CDARG(K).dimag=CD10(K).dreal*CD40(I,K).dimag
				    +CD10(K).dimag*CD40(I,K).dreal;
			}
			else
			{
				CDARG(K).dreal=CD20(K).dreal*CD40(I,K).dreal
				    -CD20(K).dimag*CD40(I,K).dimag;
				CDARG(K).dimag=CD20(K).dreal*CD40(I,K).dimag
				    +CD20(K).dimag*CD40(I,K).dreal;
			}
			CDARG(K+N2).dreal=CD30(K).dreal+CD30(IND).dreal;
			CDARG(K+N2).dimag=CD30(K).dimag+CD30(IND).dimag;
			CDARG(K+N2*2).dreal=DB10(I,K);
			CDARG(K+N2*2).dimag=DB20(K,I);
LBL_50:
			;
		}
		CD20(IND).dreal=(double)DX;
		CD20(IND).dimag=(double)DY;
LBL_30:
		;
	}
	printf("  (DA40)=\n");
	for(i=1;i<=20;i++){
		printf(" %g ",DA40(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("  (CD10)=\n");
	for(i=1;i<=20;i++){
		printf(" %g %g ",CD10(i).dreal,CD10(i).dimag);
		n=i%5;
		if(n==0)printf("\n");
	}
	for(i=1;i<=20;i++){
		printf("  (LD10)= %ld ",LD10(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("  (DARG1)=\n");
	for(i=1;i<=20;i++){
		printf(" %g ",DARG1(i));
		n=i%5;
		if(n==0)printf("\n");
	}
	printf("  (CDARG)=\n");
	for(i=1;i<=60;i++){
		printf(" %g %g ",CDARG(i).dreal,CDARG(i).dimag);
		n=i%5;
		if(n==0)printf("\n");
	}
	exit (0);
}
int bdata()
{
	long int i,j;
	for(i=0;i<20;i++){
		udata6.da10[i]=1.0;
		udata5.da20[i]=4.0;
		da30[i]=2.0;
		udata1.da40[i]=3.0;
		ld10[i]=1;
		cd10[i].dreal=1.0;
		cd10[i].dimag=2.0;
		cd20[i].dreal=1.0;
		cd20[i].dimag=2.0;
		cd30[i].dreal=1.0;
		cd30[i].dimag=2.0;
	}
	for(i=0;i<20;i++){
		for(j=0;j<20;j++){
			udata2.db10[i][j]=5.0;
			db20[i][j]=6.0;
			ld20[i][j]=0;
			cd40[i][j].dreal=4.0;
			cd40[i][j].dimag=2.0;
			cd50[i][j].dreal=2.0;
			cd50[i][j].dimag=3.0;
		}
	}
	CDX.dreal=0.5;
	CDX.dimag=0.2;
	IND=1;
}

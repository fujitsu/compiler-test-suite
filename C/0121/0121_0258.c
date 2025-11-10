#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i)     ra[i-1]
#define RB(i)     rb[i-1]
#define RC(i)     rc[i-1]
#define RD(i)     rd[i-1]
#define RE(i)     re[i-1]
#define RF(i,j)   rf[i-1][j-1]
#define RG(i,j,k) rg[i-1][j-1][k-1]
#define SMAX(i,j) smax[i-1][j-1]
#define X(i)      x[i-1]
#define Y(i)      y[i-1]
#define DT1(i,j)  dt1[i-1][j-1]
#define DT2(i,j)  dt2[i-1][j-1]
#define IDX(i)    idx[i-1]
#define ID(i)     id[i-1]
#define FC(i)     fc[i-1]
float ra[30],rb[30],rc[30],rd[30],re[30],rf[30][30],rg[1][30][30],fc[30],
smax[30][30];
int ALS2(float ra[30],float rb[30],float rc[30],
	 float rd[30],float re[30],float rf[30][30],
	 float rg[1][30][30],
	 float *RMAX ,float *RSUM ,float *ASUM,
	 float smax[30][30]);
int ALS1(float ra[30],float rb[30],float rc[30],
	 float rd[30],float re[30],float rf[30][30],
	 float rg[1][30][30],
	 float *RMAX,float *RSUM,float *ASUM,
	 float smax[30][30]);
int VANDS(float ra[30],float rb[30],float rc[30],
	  float rd[30],float re[30],float rf[30][30],
	  float rg[1][30][30],
	  float *RMAX ,float *RSUM ,float *ASUM,
	  float smax[30][30]);
int ALV(float ra[30],float rb[30],float rc[30],
	float rd[30],float re[30],float rf[30][30],
	float rg[1][30][30],
	float *RMAX, float *RSUM, float *ASUM,
	float smax[30][30]);
int ITDAT(float ra[30],float rb[30]    ,float rc[30],float rd[30],
	  float re[30],float rf[30][30],float rg[1][30][30],
	  float *RMAX, float *RSUM,     float *ASUM,
	  float fc[30],float smax[30][30]);
int main()
{
	float RMAX,RSUM,ASUM;
	long int i,j,k,I,J,K;
	ITDAT(ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,fc,smax);
	ALV  (ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,smax);
	for(i=1;i<=30;i++){
		printf(" RA - %g ,RC - %g ,RD - %g \n",RA(i),RC(i),RD(i));
		printf(" RE - %g ,RF - %g ,RG - %g \n",RE(i),RF(i,1),RG(1,i,3));
	}
	printf(" RMAX - %g ,RSUN - %g \n",RMAX,RSUM);
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i+=3){
			printf(" SMAX - %g ",SMAX(i,j));
			printf(" SMAX - %g ",SMAX(i+1,j));
			printf(" SMAX - %g \n",SMAX(i+2,j));
		}
	}
	ITDAT(ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,fc,smax);
	VANDS(ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,smax);
	for(i=1;i<=30;i++){
		printf(" RA - %g ,RC - %g ,RD - %g \n",RA(i),RC(i),RD(i));
		printf(" RE - %g ,RF - %g ,RG - %g \n",RE(i),RF(i,1),RG(1,i,3));
	}
	printf(" RMAX - %g ,RSUN - %g \n",RMAX,RSUM);
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i+=3){
			printf(" SMAX - %g ",SMAX(i,j));
			printf(" SMAX - %g ",SMAX(i+1,j));
			printf(" SMAX - %g \n",SMAX(i+2,j));
		}
	}
	ITDAT(ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,fc,smax);
	ALS1 (ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,smax);
	for(i=1;i<=30;i++){
		printf(" RA - %g ,RC - %g ,RD - %g \n",RA(i),RC(i),RD(i));
		printf(" RE - %g ,RF - %g ,RG - %g \n",RE(i),RF(i,1),RG(1,i,3));
	}
	printf(" RMAX - %g ,RSUN - %g \n",RMAX,RSUM);
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i+=3){
			printf(" SMAX - %g ",SMAX(i,j));
			printf(" SMAX - %g ",SMAX(i+1,j));
			printf(" SMAX - %g \n",SMAX(i+2,j));
		}
	}
	ITDAT(ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,fc,smax);
	ALS2 (ra,rb,rc,rd,re,rf,rg,&RMAX,&RSUM,&ASUM,smax);
	for(i=1;i<=30;i++){
		printf(" RA - %g ,RC - %g ,RD - %g \n",RA(i),RC(i),RD(i));
		printf(" RE - %g ,RF - %g ,RG - %g \n",RE(i),RF(i,1),RG(1,i,3));
	}
	printf(" RMAX - %g ,RSUN - %g \n",RMAX,RSUM);
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i+=3){
			printf(" SMAX - %g ",SMAX(i,j));
			printf(" SMAX - %g ",SMAX(i+1,j));
			printf(" SMAX - %g \n",SMAX(i+2,j));
		}
	}
LBL_999:
	;
	exit (0);
}
int ITDAT(float ra[30],float rb[30]    ,float rc[30],float rd[30],
float re[30],float rf[30][30],float rg[1][30][30],
float *RMAX, float *RSUM,     float *ASUM,
float fc[30],float smax[30][30])
{
	long int I,J,K,i,j,k;
	for(I=1;I<=30;I++)
	{
		RA(I)=1;
		RB(I)=1;
		RC(I)=1;
		RD(I)=1;
		RE(I)=1;
		FC(I)=1;
		for(J=1;J<=30;J++)
		{
			RF(J,I)=1;
			RG(1,J,I)=1;
LBL_10:
			;
			SMAX(J,I)=1;
		}
	}
	*RMAX=1;
	*RSUM=0;
	*ASUM=0;
	return 0;
}
int ALS2(float ra[30],float rb[30],float rc[30],
float rd[30],float re[30],float rf[30][30],
float rg[1][30][30],
float *RMAX ,float *RSUM ,float *ASUM,
float smax[30][30])
{
	float x[30],y[30];
	long int idx[30];
	long int id[30]={
		1,1,1,1,1,1,1,1,1,1,
		                    7,7,7,7,7,7,7,7,7,7,
		                    16,16,16,16,16,16,16,16,16,16	};
	long int K,I1,J,I,i,j,k;
	long int  E,F;
	float     SMIN;
	K=1;
	E=1;
	I1=1;
	for(I =1;I <=30;I ++)
	{
		for(J =2;J <=I;J ++)
		{
			RA(J)=RA(J-1)*RB(J)-RB(J)+I;
			if (RA(J) >= *RMAX){
				*RMAX=RA(J);
				K=K+1;
				IDX(K)=J;
			}
			if (RA(J) <= 0)goto LBL_119         ;
			*RSUM=*RSUM+RC(J);
			X(J)=I;
			Y(J)=J;
LBL_110:
			;
		}
LBL_119:
		;
		*ASUM=*ASUM+RC(I);
		K=1;
		if (fmod(I,2) != 1){
			RC(I1)=RA(I)+I1;
			for(F =6;F <=I;F +=5)
			{
				RA(I)=RE(I)+RB(I);
				RD(F)=RD(F-5)*RE(F)-RE(F);
				if (RB(F) > SMAX(I,E)){
					SMAX(I,E)=RB(F);
					E=E+1;
					RC(F)=RC(F-5)*E-RB(F);
				}
				RA(I)=RE(I)+RB(I)+RD(I);
				if (RC(F) >  RD(F)){
					RD(K)=RD(ID(F));
					K=K+2;
					RE(ID(F))=K*RF(F,K);
					SMIN=(RE(ID(K))<RF(F,K))?RE(ID(K)):RF(F,K);
					SMIN=(SMIN<RC(F))?SMIN:RC(F);
				}
				RG(1,F,K)=RG(1,F,K)+X(F)*Y(F);
LBL_120:
				;
			}
			I1=I1+1;
			if (I1 == I)goto LBL_119         ;
		}
LBL_100:
		;
	}
	return 0;
}
int ALS1(float ra[30],float rb[30],float rc[30],
float rd[30],float re[30],float rf[30][30],
float rg[1][30][30],
float *RMAX,float *RSUM,float *ASUM,
float smax[30][30])
{
	float x[30],y[30];
	long int idx[30];
	long int id[30]={
		1,1,1,1,1,1,1,1,1,1,
		                    7,7,7,7,7,7,7,7,7,7,
		                    16,16,16,16,16,16,16,16,16,16	};
	long int K,I1,J,I,i,j,k;
	long int E,F;
	float    SMIN;
	K=1;
	E=1;
	I1=1;
	for(I =1;I <=30;I ++)
	{
		for(J =2;J <=I;J ++)
		{
			RA(J)=RA(J-1)*RB(J)-RB(J)+I;
			if (RA(J) >= *RMAX){
				*RMAX=RA(J);
				K=K+1;
				IDX(K)=J;
			}
			if (RA(J) <= 0)goto LBL_219         ;
			*RSUM=*RSUM+RC(J);
			X(J)=I;
			Y(J)=J;
LBL_210:
			;
		}
LBL_219:
		;
		*ASUM=*ASUM+RC(I);
		K=1;
		if (fmod(I,2) != 1){
			RC(I1)=RA(I)+I1;
			for(F =6;F <=I;F +=5)
			{
				RA(I)=RE(I)*RB(I);
				RD(F)=RD(F-5)*RE(F)-RE(F);
				if (RB(F)  >   SMAX(I,E)){
					SMAX(I,E)=RB(F);
					E=E+1;
					RC(F)=RC(F-5)*E-RB(F);
				}
				RA(I)=RE(I)*RB(I)+sin(RD(I));
				if (RE(F) >  RE(1)){
					RB(ID(K))=RF(F,K);
					K=K+2;
					RA(ID(F))=K*RF(F,K);
					SMIN=(RE(ID(K))<RF(F,K))?RE(ID(K)):RF(F,K);
					SMIN=(SMIN<RC(F))?SMIN:RC(F);
				}
				RG(1,F,K)=RG(1,F,K)+X(F)*Y(F);
LBL_220:
				;
			}
			I1=I1+1;
			if (I1 == I)goto LBL_219         ;
		}
LBL_200:
		;
	}
	return 0;
}
int VANDS(float ra[30],float rb[30],float rc[30],
float rd[30],float re[30],float rf[30][30],
float rg[1][30][30],
float *RMAX ,float *RSUM ,float *ASUM,
float smax[30][30])
{
	static float x[30],y[30],dt1[30][30],dt2[30][30];
	long int idx[30];
	long int id[30]={
		1,1,1,1,1,1,1,1,1,1,
		                    7,7,7,7,7,7,7,7,7,7,
		                    16,16,16,16,16,16,16,16,16,16	};
	long int K,I1,J,I,i,j,k;
	long int E,F;
	float    DIF,SMIN;
	for(i=0;i< 30;i++){
		y[i]=2;
	}
	for(j=0;j< 30;j++){
		for(i=0;i< 30;i++){
			dt1[i][j]=1;
			dt2[i][j]=1;
		}
	}
	K=1;
	E=1;
	I1=1;
	for(I =1;I <=30;I ++)
	{
		for(J =2;J <=I;J ++)
		{
			RA(J)=RA(J-1)*RB(J)-RB(J)+I;
			if (RA(J) >= *RMAX){
				*RMAX=RA(J);
				K=K+1;
				IDX(K)=J;
			}
			if (RA(J) <= 0)goto LBL_219         ;
			*RSUM=*RSUM+RC(J);
			Y(J)=J;
LBL_210:
			;
		}
LBL_219:
		;
		*ASUM=*ASUM+RC(I);
		K=1;
		if (fmod(I,2) != 1){
			RC(I1)=RA(I)+I1;
			for(F =6;F <=I;F +=5)
			{
				RG(1,F,E)=RG(1,F-5,E)*RE(F)-DT2(1,F);
				DIF=SMAX(I,F)-DT1(F,3);
				if (DIF <  0){
					SMAX(I,F)=DT1(F,3);
				}
				RA(I)=RE(I)*RB(I)+sin(RD(I));
				if (RE(F) >  RE(1)){
					RB(K)=RF(F,K);
					K=K+2;
					RA(F)=K*RF(F,K);
					SMIN=(RE(F)<RF(F,K))?RE(F):RF(F,K);
					SMIN=(SMIN<RC(F))?SMIN:RC(F);
				}
				RD(F)=RD(F)+X(F)*Y(F);
LBL_220:
				;
			}
			I1=I1+1;
			if (I1 == 1)goto LBL_219         ;
		}
LBL_200:
		;
	}
	return 0;
}
int ALV(float ra[30],float rb[30],float rc[30],
float rd[30],float re[30],float rf[30][30],
float rg[1][30][30],
float *RMAX, float *RSUM, float *ASUM,
float smax[30][30])
{
	static float x[30],y[30],dt1[30][30],dt2[30][30];
	long int idx[30];
	long int id[30]={
		1,1,1,1,1,1,1,1,1,1,
		                    7,7,7,7,7,7,7,7,7,7,
		                    16,16,16,16,16,16,16,16,16,16	};
	long int K,I1,J,I,i,j,k;
	long int E,F;
	float    DIF,SMIN;
	for(i=0;i< 30;i++){
		y[i]=2;
	}
	for(j=0;j< 30;j++){
		for(i=0;i< 30;i++){
			dt1[i][j]=1;
			dt2[i][j]=1;
		}
	}
	K=1;
	E=1;
	I1=1;
	for(I =1;I <=30;I ++)
	{
		for(J =2;J <=I;J ++)
		{
			RA(J)=RA(J-1)*RB(J)-RB(J)+I;
			if (RA(J) >= *RMAX){
				*RMAX=RA(J);
				K=K+1;
				IDX(K)=J;
			}
			if (RA(J) <= 0)goto LBL_219         ;
			*RSUM=*RSUM+RC(J);
			Y(J)=J;
LBL_210:
			;
		}
LBL_219:
		;
		*ASUM=*ASUM+RC(I);
		K=1;
		if (fmod(I,2) != 1){
			RC(I1)=RA(I)+I1;
			for(F =6;F <=I;F +=5)
			{
				RG(1,F,E)=RG(1,F-5,E)*RE(F)-DT2(1,F);
				DIF=SMAX(I,F)-DT1(F,3);
				if (DIF <  0){
					SMAX(I,F)=DT1(F,3);
				}
				RA(F)=RE(F)*RB(F)+sin(RD(F));
				if (RE(F) >  RE(1)){
					RB(F)=RF(F,K);
					K=K+2;
					RA(F)=K*RF(F,K);
					SMIN=(RE(F)<RF(F,K))?RE(F):RF(F,K);
					SMIN=(SMIN<RC(F))?SMIN:RC(F);
				}
				RD(F)=RD(F)+X(F)*Y(F);
LBL_220:
				;
			}
			I1=I1+1;
			if (I1 == 1)goto LBL_219         ;
		}
LBL_200:
		;
	}
	return 0;
}

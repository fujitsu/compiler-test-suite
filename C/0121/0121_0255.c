#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i)   ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i)   rc[i-1]
#define RE(i)   re[i-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i)   cb[i-1]
#define CC(i,j) cc[i-1][j-1]
#define CD(i)   cd[i-1]
#define CE(i)   ce[i-1]
#define CF(i)   cf[i-1]
float     ra[30],rb[30][1],rc[30],re[30];
COMPLEX16 ca[30][30],cb[30],cc[3][30],cd[30],ce[30],cf[30];
int ALLS(float ra[30],float rb[30][1],float rc[30],float re[30],
	 COMPLEX16 ca[30][30],COMPLEX16 cb[30],COMPLEX16 cd[30],
	 COMPLEX16 ce[30],    COMPLEX16 cf[30],
	 long int N,long int *L);
int VANDS(float ra[30],float rb[30][1],float rc[30],
	  COMPLEX16 ca[30][30],COMPLEX16 cb[30],
	  COMPLEX16 cc[3][30] ,COMPLEX16 cd[30],
	  long int N,long int *L);
int ALLV(float ra[30] ,float rb[30][1],float rc[30],
	 COMPLEX16 ca[30][30],COMPLEX16 cb[30],COMPLEX16 cc[3][30],
	 COMPLEX16 cd[30],    COMPLEX16 ce[30],COMPLEX16 cf[30],
	 long int N,long int *L);
int ITDATA(float ra[30],float rb[30][1],float rc[30],
	   COMPLEX16 ca[30][30],COMPLEX16 cb[30],
	   COMPLEX16 cc[3][30], COMPLEX16 cd[30],
	   long int *L);
int main()
{
	long int N=25,L;
	long int i,j,I,J;
	for(i=0;i< 30;i++){
		re[i]=1;
	}
	for(i=0;i< 30;i++){
		cd[i].dreal=1;
		cd[i].dimag=1;
		ce[i].dreal=1;
		ce[i].dimag=1;
		cf[i].dreal=1;
		cf[i].dimag=1;
	}
	ITDATA(ra,rb,rc,ca,cb,cc,cd,&L);
	ALLV  (ra,rb,rc,ca,cb,cc,cd,ce,cf,N,&L);
	for(i=1;i<=30;i++){
		printf(" RA- %g , RB- %g , RC- %g \n",
		    RA(i),RB(i,1),RC(i));
		printf(" CA- %g %g , CB- %g %g \n",
		    CA(1,i).dreal,CA(1,i).dimag,CB(i).dreal,CB(i).dimag);
	}
	for(i=1;i<=25;i++){
		printf(" CC- %g %g \n",CC(3,i).dreal,CC(3,i).dimag);
	}
	ITDATA(ra,rb,rc,ca,cb,cc,cd,&L);
	VANDS (ra,rb,rc,ca,cb,cc,cd,N,&L);
	for(i=1;i<=30;i++){
		printf(" RA- %g , RB- %g , RC- %g \n",
		    RA(i),RB(i,1),RC(i));
		printf(" CA- %g %g , CB- %g %g \n",
		    CA(1,i).dreal,CA(1,i).dimag,CB(i).dreal,CB(i).dimag);
	}
	for(i=1;i<=25;i++){
		printf(" CC- %g %g \n",CC(3,i).dreal,CC(3,i).dimag);
	}
	ITDATA(ra,rb,rc,ca,cb,cc,cd,&L);
	ALLS  (ra,rb,rc,re,ca,cb,cd,ce,cf,N,&L);
	for(i=1;i<=30;i++){
		printf(" RA- %g , RB- %g , RC- %g \n",
		    RA(i),RB(i,1),RC(i));
		printf(" CA- %g %g , CB- %g %g \n",
		    CA(1,i).dreal,CA(1,i).dimag,CB(i).dreal,CB(i).dimag);
		printf(" CC- %g %g \n",CC(3,i).dreal,CC(3,i).dimag);
	}
LBL_9:
	;
	exit (0);
}
#define RA(i)   ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i)   rc[i-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i)   cb[i-1]
#define CC(i,j) cc[i-1][j-1]
#define CD(i)   cd[i-1]
#define CE(i)   ce[i-1]
#define CF(i)   cf[i-1]
int ALLV(float ra[30] ,float rb[30][1],float rc[30],
COMPLEX16 ca[30][30],COMPLEX16 cb[30],COMPLEX16 cc[3][30],
COMPLEX16 cd[30],    COMPLEX16 ce[30],COMPLEX16 cf[30],
long int N,long int *L)
{
	long int I,J,K,i,j,k;
	printf(" %ld \n",N);
	*L=1;
	for(K=1;K<=N;K++)
	{
		for(J=1;J<=N;J++)
		{
			for(I=3;I<=J-1;I++)
			{
				*L=fmod(I,J-1);
				RC(I)=pow(RA(I),*L);
				RA(I)=sin(RB(J,1));
				RC(I)=cos(RB(J,1));
				RC(I)=1/exp(RB(I+1,1));
				CB(I).dreal=(float)(RB(I,1))*(*L)-pow(CD(I).dreal,2);
				CB(I).dimag=(float)(RB(I,1))*(*L)-pow(CD(I).dimag,2);
				CC(3,I).dreal=CA(K,I).dreal*(CF(I).dreal/CE(I).dreal);
				CC(3,I).dimag=CA(K,I).dimag*(CF(I).dimag/CE(I).dreal);
				CA(K,I).dreal=fabs(CA(K,I).dreal);
				CA(K,I).dimag=fabs(CA(K,I).dimag);
LBL_10:
				;
			}
LBL_20:
			;
		}
LBL_30:
		;
	}
	return 0;
}
#define RA(i)   ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i)   rc[i-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i)   cb[i-1]
#define CC(i,j) cc[i-1][j-1]
#define CD(i)   cd[i-1]
int VANDS(float ra[30],float rb[30][1],float rc[30],
COMPLEX16 ca[30][30],COMPLEX16 cb[30],
COMPLEX16 cc[3][30] ,COMPLEX16 cd[30],
long int N,long int *L)
{
	long int M,J,I,K,i,j,k;
	float H;
	*L=1;
	M=1;
	for(K=1;K<=N;K++)
	{
		for(J=1;J<=N;J++)
		{
			for(I=3;I<=N;I++)
			{
				H=pow(J,J)*2;
				CA(I,J).dreal=pow(sqrt(CA(I,I).dreal),RB(K,1));
				CA(I,J).dimag=pow(sqrt(CA(I,I).dimag),RB(K,1));
				RA(I)=sin(RB(I,1));
				M=fmod(M+1,28)+1;
				RC(I)=cos(RB(I,1));
				*L=pow(*L,I);
				RC(I)=pow(RB(I+1,1),*L);
				CD(I).dreal=CD(M).dreal*(CA(I,M).dreal/CD(M).dreal);
				CB(I).dimag=CC(3,J).dimag-CA(I,I).dimag;
LBL_40:
				;
			}
LBL_50:
			;
		}
LBL_60:
		;
	}
	return 0;
}
#define RA(i)   ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i)   rc[i-1]
#define RE(i)   re[i-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i)   cb[i-1]
#define CD(i)   cd[i-1]
#define CE(i)   ce[i-1]
#define CF(i)   cf[i-1]
int ALLS(float ra[30],float rb[30][1],float rc[30],float re[30],
COMPLEX16 ca[30][30],COMPLEX16 cb[30],COMPLEX16 cd[30],
COMPLEX16 ce[30],    COMPLEX16 cf[30],
long int N,long int *L)
{
	long int M,K,J,I,i,j,k;
	long int T,S;
	*L=1;
	T=1;
	S=1;
	M=1;
	for(K=1;K<=N;K++)
	{
		printf(" loop K= %ld \n",K);
		for(J=1;J< N;J++)
		{
			T=1;
			for(I=4;I<=N;I++)
			{
				M=M+1;
				if (M >  N)M=2;
				if (RB(M-1,1) > pow(2,50))  RB(M,1)=RB(M,1)-RB(M-1,1);
				CA(J,I).dreal=CB(M).dreal;
				CA(J,I).dimag=CB(M).dimag;
LBL_72:
				;
				CB(I).dreal=(CA(J,I).dreal+CB(I-1).dreal)-CB(M).dreal;
				CB(I).dimag=(CA(J,I).dimag+CB(I-1).dimag)-CB(M).dimag;
				*L=fmod(*L+M+J,15)+2;
				CD(I).dreal=CF(I).dreal*(CD(I-1).dreal/CE(I).dreal);
				CD(I).dimag=CF(I).dimag*(CD(I-1).dimag/CE(I).dimag);
				RA(*L)=RA(*L-1);
				if (RC(I) <  pow(2,50)){
					RC((int)T)=RC(I);
					T=T+1;
				}
				RC(I)=RC(I-1);
				if (S <  30){
					S=S+1;
					RA(I)=sin(RB((int)S,1))+cos(RB((int)S,1));
				}
				RE(I)=pow(RE(I-1),RE(I));
				CE(*L).dreal=fabs(CE(*L-1).dreal);
				CE(*L).dimag=fabs(CE(*L-1).dimag);
				RC(M)=RA(M-1);
LBL_70:
				;
			}
LBL_80:
			;
		}
LBL_90:
		;
	}
	return 0;
}
#define RA(i)   ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i)   rc[i-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i)   cb[i-1]
#define CC(i,j) cc[i-1][j-1]
#define CD(i)   cd[i-1]
int ITDATA(float ra[30],float rb[30][1],float rc[30],
COMPLEX16 ca[30][30],COMPLEX16 cb[30],
COMPLEX16 cc[3][30], COMPLEX16 cd[30],
long int *L)
{
	long int I,J,K,i,j,k;
	*L=2;
	for(I=1;I<=30;I++)
	{
		RA(I)=*L;
		RB(I,1)=1;
		RC(I)=1;
		for(J=1;J<=30;J++)
		{
LBL_10:
			;
			CA(J,I).dreal=1;
			CA(J,I).dimag=1;
		}
		CB(I).dreal=1;
		CB(I).dimag=1;
		CC(3,I).dreal=1;
		CC(3,I).dimag=1;
		CD(I).dreal=1;
		CD(I).dimag=1;
LBL_20:
		;
	}
	return 0;
}

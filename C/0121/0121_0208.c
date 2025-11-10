#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define DC(i) dc[i-1]
#define DD(i) dd[i-1]
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define LD(i) ld[i-1]
#define IN(i) in[i-1]
double            da[100],db[100],dc[100],dd[100];
float             ra[100],rb[100],rc[100],rd[100];
unsigned long int la[100],lb[100],lc[100],ld[100];
long int          in[5];
int INIT(long int N,double da[],double db[],double dc[],double dd[],
	 float  ra[],float  rb[],float  rc[],float  rd[],
	 unsigned long int la[],unsigned long int lb[],
	 unsigned long int lc[],unsigned long int ld[]);
int TEST1(long int N,double da[],double db[],double dc[],double dd[],
	  float  ra[],float  rb[],float  rc[],float  rd[],
	  unsigned long int la[],unsigned long int lb[],
	  unsigned long int lc[],unsigned long int ld[]);
int TEST2(long int N,double da[],double db[],double dc[],double dd[],
	  float  ra[],float  rb[],float  rc[],float  rd[],
	  unsigned long int la[],unsigned long int lb[],
	  unsigned long int lc[],unsigned long int ld[],
	  long int in[]);
int TEST3(long int N,double da[],double db[],double dc[],double dd[],
	  float  ra[],float  rb[],float  rc[],float  rd[],
	  unsigned long int la[],unsigned long int lb[],
	  unsigned long int lc[],unsigned long int ld[]);
int TEST4(long int N,double da[],double db[],double dc[],double dd[],
	  float  ra[],float  rb[],float  rc[],float  rd[],
	  unsigned long int la[],unsigned long int lb[],
	  unsigned long int lc[],unsigned long int ld[],
	  long int in[]);
int main()
{
	long int N,i,j,I,J;
	for(i=0;i< 5;i++){
		in[i]=(i+1)*10;
	}
	N=100;
	printf(" INIT STARTS.\n");
	INIT(N,da,db,dc,dd,ra,rb,rc,rd,la,lb,lc,ld);
	printf(" TEST1 STARTS.\n");
	TEST1(N,da,db,dc,dd,ra,rb,rc,rd,la,lb,lc,ld);
	printf(" TEST2 STARTS.\n");
	TEST2(N,da,db,dc,dd,ra,rb,rc,rd,la,lb,lc,ld,in);
	printf(" TEST3 STARTS.\n");
	TEST3(N,da,db,dc,dd,ra,rb,rc,rd,la,lb,lc,ld);
	printf(" TEST4 STARTS.\n");
	TEST4(N,da,db,dc,dd,ra,rb,rc,rd,la,lb,lc,ld,in);
	exit (0);
}
int INIT(long int N,double da[],double db[],double dc[],double dd[],
float  ra[],float  rb[],float  rc[],float  rd[],
unsigned long int la[],unsigned long int lb[],
unsigned long int lc[],unsigned long int ld[])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		DA(I)=0.;
		DB(I)=1.;
		DC(I)=2.;
		DD(I)=3.;
		RA(I)=0.;
		RB(I)=1.;
		RC(I)=2.;
		RD(I)=3.;
LBL_10:
		;
	}
	for(J=1;J<=N;J+=2)
	{
		LA(J)=1;
		LA(J+1)=0;
		LB(J)=1;
		LB(J+1)=0;
		LC(J)=1;
		LC(J+1)=0;
		LD(J)=1;
		LD(J+1)=0;
LBL_20:
		;
	}
	return 0;
}
int TEST1(long int N,double da[],double db[],double dc[],double dd[],
float  ra[],float  rb[],float  rc[],float  rd[],
unsigned long int la[],unsigned long int lb[],
unsigned long int lc[],unsigned long int ld[])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			for(J=1;J<=N;J++)
			{
				DA(J)=DB(J)+DC(J);
LBL_20:
				;
			}
		}
LBL_10:
		;
	}
	printf(" TEST1:1ST PRINT COMMAND. \n");
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			for(J=1;J<=N;J++)
			{
				DA(J)=DB(J)+DC(J);
LBL_40:
				;
			}
		}
LBL_30:
		;
	}
	printf(" TEST1:2ND PRINT COMMAND. \n");
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			RA(I)=sqrt(RB(I))+sqrt(RC(I));
			RA(I)=pow(RA(I),3);
			for(J=2;J<=N;J++)
			{
				DA(J)=DA(J-1)+DC(J);
LBL_60:
				;
			}
		}
LBL_50:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g ",RA(i));
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			for(J=2;J<=N;J++)
			{
				DA(J)=DA(J-1)+DC(J);
LBL_80:
				;
			}
		}
LBL_70:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	return 0;
}
int TEST2(long int N,double da[],double db[],double dc[],double dd[],
float  ra[],float  rb[],float  rc[],float  rd[],
unsigned long int la[],unsigned long int lb[],
unsigned long int lc[],unsigned long int ld[],
long int in[])
{
	long int J,I,i,j;
	for(I=1;I<=IN(1);I++)
	{
		if (LA(I)){
			for(J=1;J<=IN(2);J++)
			{
				DA(J)=DB(J)+DC(J);
LBL_20:
				;
			}
		}
LBL_10:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=IN(3);I++)
	{
		if (LB(I)){
			for(J=1;J<=IN(4);J++)
			{
				DA(J)=DB(J)+DC(J);
LBL_40:
				;
			}
		}
LBL_30:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=IN(5);I++)
	{
		if (LA(I)){
			RA(I)=sqrt(RB(I))+sqrt(RC(I));
			RA(I)=pow(RA(I),3);
			for(J=2;J<=IN(1);J++)
			{
				DA(J)=DA(J-1)+DC(J);
LBL_60:
				;
			}
		}
LBL_50:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g ",RA(i));
		printf(" %g \n",DA(i));
	}
	for(I=1;I<=IN(3);I++)
	{
		if (LC(I)){
			for(J=2;J<=IN(4);J++)
			{
				DA(J)=DA(J-1)+DC(J);
LBL_80:
				;
			}
		}
LBL_70:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	return 0;
}
int TEST3(long int N,double da[],double db[],double dc[],double dd[],
float  ra[],float  rb[],float  rc[],float  rd[],
unsigned long int la[],unsigned long int lb[],
unsigned long int lc[],unsigned long int ld[])
{
	long int J,I,i,j,K,L;
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			for(J=1;J<=N;J++)
			{
				if (LB(J)){
					for(K=1;K<=N;K++)
					{
						if (LC(K)){
							for(L=1;L<=N;L++)
							{
								DA(L)=DB(L)+DC(L);
LBL_40:
								;
							}
						}
LBL_30:
						;
					}
				}
LBL_20:
				;
			}
		}
LBL_10:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	return 0;
}
int TEST4(long int N,double da[],double db[],double dc[],double dd[],
float  ra[],float  rb[],float  rc[],float  rd[],
unsigned long int la[],unsigned long int lb[],
unsigned long int lc[],unsigned long int ld[],
long int in[])
{
	long int J,I,i,j,K,L;
	for(I=1;I<=IN(1);I++)
	{
		if (LA(I)){
			for(J=1;J<=IN(2);J++)
			{
				if (LB(J)){
					for(K=1;K<=IN(3);K++)
					{
						if (LC(K)){
							for(L=1;L<=IN(4);L++)
							{
								DA(L)=DB(L)+DC(L);
LBL_40:
								;
							}
						}
LBL_30:
						;
					}
				}
LBL_20:
				;
			}
		}
LBL_10:
		;
	}
	for(i=1;i<=N;i++){
		printf(" %g \n",DA(i));
	}
	return 0;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA(i,j) da[i-1][j-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j) dc[i-1][j-1]
#define RA(i,j) ra[i-1][j-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j) rc[i-1][j-1]
#define LA(i)   la[i-1]
#define LB(i)   lb[i-1]
#define LC(i)   lc[i-1]
double            da[10][10],db[10][10],dc[10][10];
float             ra[10][10],rb[10][10],rc[10][10];
unsigned long int la[10],lb[10],lc[10];
int INIT(long int N,double da[10][10],double db[10][10],double dc[10][10],
	 float  ra[10][10],float  rb[10][10],float  rc[10][10],
	 unsigned long int    la[10],
	 unsigned long int    lb[10],
	 unsigned long int    lc[10]);
int TEST1(long int N,double da[10][10],double db[10][10],double dc[10][10],
	  float  ra[10][10],float  rb[10][10],float  rc[10][10],
	  unsigned long int    la[10],
	  unsigned long int    lb[10],
	  unsigned long int    lc[10]);
int TEST2(long int N,double da[10][10],double db[10][10],double dc[10][10],
	  float  ra[10][10],float  rb[10][10],float  rc[10][10],
	  unsigned long int    la[10],
	  unsigned long int    lb[10],
	  unsigned long int    lc[10]);
int TEST3(long int N,double da[10][10],double db[10][10],double dc[10][10],
	  float  ra[10][10],float  rb[10][10],float  rc[10][10],
	  unsigned long int    la[10],
	  unsigned long int    lb[10],
	  unsigned long int    lc[10]);
int TEST4(long int N,double da[10][100],double db[10][10],double dc[10][10],
	  float  ra[10][10],float  rb[10][10],float  rc[10][10],
	  unsigned long int    la[10],
	  unsigned long int    lb[10],
	  unsigned long int    lc[10]);
int main()
{
	long int N,i,j,I,J;
	N=10;
	INIT(N,da,db,dc,ra,rb,rc,la,lb,lc);
	TEST1(N,da,db,dc,ra,rb,rc,la,lb,lc);
	TEST2(N,da,db,dc,ra,rb,rc,la,lb,lc);
	TEST3(N,da,db,dc,ra,rb,rc,la,lb,lc);
	TEST4(N,da,db,dc,ra,rb,rc,la,lb,lc);
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %g %g \n",RA(i,j),DA(i,j));
		}
	}
	exit (0);
}
int INIT(long int N,double da[10][10],double db[10][10],double dc[10][10],
float  ra[10][10],float  rb[10][10],float  rc[10][10],
unsigned long int    la[10],
unsigned long int    lb[10],
unsigned long int    lc[10])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		for(J=1;J<=N;J++)
		{
			DA(J,I)=I+J;
			DB(J,I)=I-J;
			DC(J,I)=I*J;
			RA(J,I)=I+J;
			RB(J,I)=I-J;
			RC(J,I)=I*J;
LBL_10:
			;
		}
	}
	for(I=1;I<=N;I+=2)
	{
		LA(I)=1;
		LB(I)=0;
		LC(I)=LA(I);
		LA(I+1)=0;
		LB(I+1)=1;
		LC(I+1)=LA(I);
LBL_20:
		;
	}
	return 0;
}
int TEST1(long int N,double da[10][10],double db[10][10],double dc[10][10],
float  ra[10][10],float  rb[10][10],float  rc[10][10],
unsigned long int    la[10],
unsigned long int    lb[10],
unsigned long int    lc[10])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_10         ;
		if (LB(I))goto LBL_10         ;
		DA(I,I)=DB(I,I)+DC(I,I);
LBL_10:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(J)){
			if (LB(5)){
				RA(J,J)=RB(J,J)+RC(J,J);
			}
		}
LBL_20:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(5)){
			if (LB(J)){
				RA(J,J)=RB(J,J)*RC(J,J);
			}
		}
LBL_30:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(4)){
			if (LB(6)){
				RA(J,J)=RB(J,J)*RC(J,J);
			}
		}
LBL_40:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_51         ;
		goto LBL_52;
LBL_51:
		;
		if (LB(I))goto LBL_53         ;
		goto LBL_50;
LBL_52:
		;
		if (LC(I))goto LBL_50         ;
LBL_53:
		;
		DA(I,I)=DB(I,I)+DC(I,I);
LBL_50:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(2))goto LBL_61         ;
		goto LBL_62;
LBL_61:
		;
		if (LB(3))goto LBL_63         ;
		goto LBL_60;
LBL_62:
		;
		if (LC(3))goto LBL_60         ;
LBL_63:
		;
		DA(I,I)=DB(I,I)*DC(I,I);
LBL_60:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_71         ;
		goto LBL_72;
LBL_71:
		;
		if (LB(3))goto LBL_73         ;
		goto LBL_70;
LBL_72:
		;
		if (LC(I))goto LBL_70         ;
LBL_73:
		;
		RA(I,I)=RB(I,I)-RC(I,I);
LBL_70:
		;
	}
	return 0;
}
int TEST2(long int N,double da[10][10],double db[10][10],double dc[10][10],
float  ra[10][10],float  rb[10][10],float  rc[10][10],
unsigned long int    la[10],
unsigned long int    lb[10],
unsigned long int    lc[10])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_71         ;
		goto LBL_72;
LBL_71:
		;
		if (LB(3))goto LBL_73         ;
		goto LBL_70;
LBL_72:
		;
		if (LC(I))goto LBL_70         ;
LBL_73:
		;
		for(J=1;J<=N;J++)
		{
			if (LA(J))goto LBL_61         ;
			goto LBL_62;
LBL_61:
			;
			if (LB(I))goto LBL_63         ;
			goto LBL_60;
LBL_62:
			;
			if (LC(J))goto LBL_60         ;
LBL_63:
			;
			DA(J,I)=DB(J,I)+DC(J,I);
			RA(J,I)=RB(J,I)+RC(J,I);
LBL_60:
			;
		}
LBL_70:
		;
	}
	return 0;
}
int TEST3(long int N,double da[10][10],double db[10][10],double dc[10][10],
float  ra[10][10],float  rb[10][10],float  rc[10][10],
unsigned long int    la[10],
unsigned long int    lb[10],
unsigned long int    lc[10])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_10         ;
		if (LB(I))goto LBL_10         ;
		DA(I,I)=DB(I,I)+DC(I,I);
LBL_10:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(J)){
			if (LB(5)){
				RA(J,J)=RB(J,J)+RC(J,J);
			}
		}
LBL_20:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(5)){
			if (LB(J)){
				RA(J,J)=RB(J,J)*RC(J,J);
			}
		}
LBL_30:
		;
	}
	for(J=1;J<=N;J++)
	{
		if (LA(4)){
			if (LB(6)){
				RA(J,J)=RB(J,J)*RC(J,J);
			}
		}
LBL_40:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_51         ;
		goto LBL_52;
LBL_51:
		;
		if (LB(I))goto LBL_53         ;
		goto LBL_50;
LBL_52:
		;
		if (LC(I))goto LBL_50         ;
LBL_53:
		;
		DA(I,I)=DB(I,I)+DC(I,I);
LBL_50:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(2))goto LBL_61         ;
		goto LBL_62;
LBL_61:
		;
		if (LB(3))goto LBL_63         ;
		goto LBL_60;
LBL_62:
		;
		if (LC(3))goto LBL_60         ;
LBL_63:
		;
		DA(I,I)=DB(I,I)+DC(I,I);
LBL_60:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_71         ;
		goto LBL_72;
LBL_71:
		;
		if (LB(3))goto LBL_73         ;
		goto LBL_70;
LBL_72:
		;
		if (LC(I))goto LBL_70         ;
LBL_73:
		;
		RA(I,I)=RB(I,I)-RC(I,I);
LBL_70:
		;
	}
	return 0;
}
int TEST4(long int N,double da[10][100],double db[10][10],double dc[10][10],
float  ra[10][10],float  rb[10][10],float  rc[10][10],
unsigned long int    la[10],
unsigned long int    lb[10],
unsigned long int    lc[10])
{
	long int J,I,i,j;
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_71         ;
		goto LBL_72;
LBL_71:
		;
		if (LB(3))goto LBL_73         ;
		goto LBL_70;
LBL_72:
		;
		if (LC(I))goto LBL_70         ;
LBL_73:
		;
		for(J=1;J<=N;J++)
		{
			if (LA(J))goto LBL_61         ;
			goto LBL_62;
LBL_61:
			;
			if (LB(I))goto LBL_63         ;
			goto LBL_60;
LBL_62:
			;
			if (LC(J))goto LBL_60         ;
LBL_63:
			;
			DA(J,I)=DB(J,I)+DC(J,I);
			RA(J,I)=RB(J,I)*RC(J,I);
LBL_60:
			;
		}
LBL_70:
		;
	}
	return 0;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DC10(i) dc10[i-1]
#define DC20(i) dc20[i-1]
#define DC30(i) dc30[i-1]
#define DA10(i) udata.da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) udata1.da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j,k) udata2.db30[i-1][j-1][k-1]
#define LD10(i) udata3.ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define ID10(i) id10[i-1]
#define CD10(i) udata2.cd10[i-1]
#define CD20(i) cd20[i-1]
#define DM10(i) udata1.dm10[i+60]
#define DM20(i) udata.dm20[i+60]
#define CPdreal 1.50
#define CPdimag 0.50
#define IP1 2
#define IP2 10
#define DP  20.00
double dc10[60],dc20[60],dc30[60];
long int id10[60];
double db30[30][30][30];
COMPLEX16 cd20[60];
unsigned long int ld10[60],ld20[40][40];
double da20[60],db10[40][40],db20[40][40];
union{
	double da10[60];
	double dm20[60];
}udata;
union{
	double da30[60];
	double dm10[60];
}udata1;
union{
	COMPLEX16 cd10[60];
	double    db30[30][30][30];
}udata2;
union{
	unsigned long int ld10[60];
	long int lval;
	long int lval2;
}udata3;
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT5=10;
	long int i,j,k;
	double DX,DY;
	int s=0;
	float x;
	for(i=1;i<=60;i++){
		DA10(i)=1.0;
	}
	for(i=1;i<=60;i++){
		DA20(i)=1.20;
	}
	for(i=1;i<=60;i++){
		DA30(i)=2.0;
	}
	for(j=1;j<=40;j++){
		for(i=1;i<=40;i++){
			DB10(i,j)=1.0;
		}
	}
	for(j=1;j<=40;j++){
		for(i=1;i<=40;i++){
			DB20(i,j)=2.0;
		}
	}
	for(k=1;k<=30;k++){
		for(j=1;j<=30;j++){
			for(i=1;i<=30;i++){
				DB30(i,j,k)=1.0;
			}
		}
	}
	for(i=1;i<=10;i++){

		udata1.dm10[i] = -2.0;
	}
	for(i=1;i<=10;i++){

		udata.dm20[i] = -4.0;
	}
	for(i=1;i<=60;i++){
		CD10(i).dreal=1.0;
		CD10(i).dimag=2.0;
	}
	for(i=1;i<=60;i++){
		CD20(i).dreal=2.0;
		CD20(i).dimag=4.0;
	}
	for(i=1;i<=60;i++){
		LD10(i)=0;
	}
	for(j=1;j<=40;j++){
		for(i=1;i<=40;i++){
			LD20(i,j)=0;
		}
	}
	for(i=1;i<=60;i++)
	{
		DC10(i)=1.0;
		DC20(i)=2.e-1;
		DC30(i)=0.50;
		ID10(i)=61-i;
	}
	for(i=-50;i<=-26;i++)
	{
		DM10(i)=DM10(i+25)+DM20(i);
		DM20(i+25)=DA30(-i)-DA20(-i+1);
	}
	printf("  ****  *** NO.1 **** \n");
	for(i=1;i<=10;i++){
	
		printf("(DM10(%ld)) %g ",i,udata1.dm10[i]);
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	for(i=1;i<=10;i++){
	
		printf("(DM20(%ld)) %g ",i,udata.dm20[i]);
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	for(j=IT2*2;j<=IT2*IT5;j+=IT1*IT2)
	{
		DC20(j)=DA10(j+IT1*IT2)+DA20(j+IT2);
		DA10(j)=DC10(j+IT1*IT2)-DC20(j+IT2*IT5);
		DA30(j)=(double)(CD20(j+IT1).dimag)-(double)(CD20(j+IT2).dreal);
		if ( DA30(j) <=1) goto LBL_41;
		if ( DA30(j) > 1) goto LBL_42;
LBL_43:
		;
		DX=DC20(j-1)*2.0;
		DY=DC30(j-1)*2.0;
		for(k=j;k<=25;k++)
		{
			DB10(j,k)=(DB20(j,k) > DB20(k,j)) ? DB20(j,k) : DB20(k,j);
			DB20(j,k)=(DB10(j,k) > DB10(k,j)) ? DB10(j,k) : DB10(k,j);
			if ( DB10(j,k) >  DB20(j,k) )
			{
				LD10(k*2)=1;
			}
			else
			{
				LD10(k*2-1)=1;
			}
			LD20(j,k)=1;
LBL_50:
			;
		}
		CD20(j).dreal=(double)(DX);
		CD20(j).dimag=(double)(DY);
		goto LBL_40;
LBL_41:
		;
		DA20(j+IT1)=DB30(j,j+1,j+2)+DC10(j*2);
		goto LBL_43;
LBL_42:
		;
		DC10(j)=DB30(j,IT3,j)*2.0;
		goto LBL_43;
LBL_40:
		;
	}
	printf("  ****  *** NO.2 **** \n");
	for(i=4;i<=20;i++){
		printf("(DC20(%ld)) %g ",i,DC20(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=4;i<=20;i++){
		printf("(DC30(%ld)) %g ",i,DC30(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=4;i<=20;i++){
		printf("(DA10(%ld)) %g ",i,DA10(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=4;i<=20;i++){
		printf("(DA30(%ld)) %g ",i,DA30(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=8;i<=24;i++){
		printf("(DA20(%ld)) %g ",i,DA20(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=4;i<=20;i++){
		printf("(DC10(%ld)) %g ",i,DC10(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=6;i<=22;i++){
		printf("(CD20(%ld)) %g %g ",i,CD20(i).dreal,CD20(i).dimag);
		s=s+1;
		x=s%4;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(j=4;j<=40;j++){
		for(i=4;i<=20;i++){
			printf("(DB10(%ld,%ld)) %g ",i,j,DB10(i,j));
			s=s+1;
			x=s%4;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(j=4;j<=40;j++){
		for(i=4;i<=20;i++){
			printf("(DB20(%ld,%ld)) %g ",i,j,DB20(i,j));
			s=s+1;
			x=s%4;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(i=1;i<=60;i++){
		printf("(LD10(%ld)) %ld ",i,LD10(i));
		s=s+1;
		x=s%4;
		if( x==0 ) printf(" \n");
	}
	exit (0);
}

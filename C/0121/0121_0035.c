#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DC10(i) dc10[i-1]
#define DC20(i) dc20[i-1]
#define DA10(i) udata.da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) udata1.da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j,k) udata2.db30[i-1][j-1][k-1]
#define ID10(i) id10[i-1]
#define CD10(i) udata2.cd10[i-1]
#define CD20(i) cd20[i-1]
#define DM10(i) udata1.dm10[i+60]
#define DM20(i) udata.dm20[i+60]
#define DC30(i) dc30[i-1]
#define CPdreal 1.50
#define CPdimag 0.50
#define IP1 2
#define IP2 10
#define DP 20.00
double dc10[60],dc20[60],dc30[60];
long int id10[60];
COMPLEX16 cd20[60];
double da20[60],db10[40][40],db20[40][40];
union{
	double da10[60];
	double dm20[60];
}udata;
union{
	double dm10[60];
	double da30[60];
}udata1;
union{
	COMPLEX16 cd10[60];
	double    db30[30][30][30];
}udata2;
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=5;
	long int IT5=10;
	long int i,j,k,IL1,IND;
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
	for(i=-60;i<=-1;i++){
		DM10(i)=-2.0;
	}
	for(i=-60;i<=-1;i++){
		DM20(i)=-4.0;
	}
	for(i=1;i<=60;i++){
		CD10(i).dreal=1.0;
		CD10(i).dimag=2.0;
	}
	for(i=1;i<=60;i++){
		CD20(i).dreal=2.0;
		CD20(i).dimag=4.0;
	}
	for(i=1;i<=60;i++)
	{
		DC10(i)=1.0;
		DC20(i)=2.e-1;
		DC30(i)=0.50;
		ID10(i)=61-i;
	}
	for(i=DP;i>=IT4;i-=1)
	{
		DA10(i*2-1)=DA20(i)+DA30(i+IT2);
		DM10(-i)=DB30(i+2,IT5,IT2)*DA20(i*2);
		DA20(i+1)=DA10(i*2)-DA30(i+IT4);
		for(j=25;j>=2;j-=IP2)
		{
			IL1=ID10(61-j);
			IND=j+1;
			DB10(IL1,IND)=DB20(j,IL1)+DB30(IL1,IT3,IND);
			DB20(j,i-1)=DB10(IL1,j)*2.0 -DB30(IL1,i,j+3);
			DB30(IL1,i,j)=DB10(i,j)-DB20(i,j)*(-2.0 );
		}
		if ( DA20(i)  >   (CD20(i).dimag) )
		{
			DA30(i+1)=DM10(1-i)+DA20(i+3);
			DX=DM10(-i-2)/2.0;
			DY=(double)(sqrt(DA10(i*2-3)));
			DY=(DY>0.0)?
			    (double)(int)(DY+0.5):
			    (double)(int)(DY-0.5);
			CD20(i+1).dreal=(double)(DY);
			CD20(i+1).dimag=(double)(DX);
		}
		DC10(i)=(DA10(i)>DA20(i))? DA10(i):DA20(i);
		DC10(i)=(DC10(i)>DA30(i))? DC10(i):DA30(i);
	}
	printf("  ****  *** NO.1 **** \n");
	for(k=60;k>=9;k-=2){
		printf("(DA10(%ld)) %g ",k,DA10(k));
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(k=51;k>=6;k-=1){
		printf("(DA20(%ld)) %g ",k,DA20(k));
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(k=51;k>=6;k-=1){
		printf("(DA30(%ld)) %g ",k,DA30(k));
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(k=51;k>=6;k-=1){
		printf("(CD20(%ld)) %g  %g ",k,CD20(k).dreal,CD20(k).dimag);
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(k=-50;k<=-1;k++){
		printf("(DM10(%ld)) %g ",k,DM10(k));
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(j=10;j<=40;j++){
		for(i=10;i<=40;i++){
			printf("(DB10(%ld,%ld)) %g ",j,i,DB10(i,j));
			s=s+1;
			x=s%3;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(j=10;j<=40;j++){
		for(i=10;i<=40;i++){
			printf("(DB20(%ld,%ld)) %g ",j,i, DB20(i,j));
			s=s+1;
			x=s%3;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	printf(" \n");
	s=0;
	for(k=20;k<=30;k++){
		for(j=20;j<=30;j++){
			for(i=20;i<=30;i++){
				printf("(DB30(%ld,%ld,%ld)) %g ",k,j,i,DB30(i,j,k));
				s=s+1;
				x=s%3;
				if( x==0 ) printf(" \n");
			}
		}
	}
        printf("\n");
	exit (0);
}

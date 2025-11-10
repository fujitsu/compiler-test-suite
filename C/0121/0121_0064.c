#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[20+i]
#define DA20(i) da20[20+i]
#define DA30(i) da30[20+i]
#define DB10(i,j) db10[20+i][20+j]
#define DB20(i,j) db20[20+i][20+j]
#define ID10(i,j) id10[20+i][20+j]
#define ID20(i,j) id20[20+i][20+j]
#define ID30(i,j) id30[20+i][20+j]
#define CD10(i,j) cd10[20+i][20+j]
#define CD20(i,j) cd20[20+i][20+j]
#define CD30(i,j) cd30[30+i][30+j]
double da10[41],da20[41],da30[41],db10[41][41],db20[41][41];
long int id10[41][41],id20[41][41],id30[41][41];
COMPLEX16 cd10[41][41],cd20[41][41],cd30[61][61];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=4;
	long int IT5=5;
	long int IT6=10;
	long int IM1=-1;
	long int IM2=-2;
	long int IM3=-4;
	long int IM4=-10;
	long int IM5=-20;
	long int I,J;
	long int i,j,n;
	double DVAR1,DX,DY,b;
	for(i=0;i<=40;i++){
		da10[i]=4.0;
		da20[i]=2.0;
		da30[i]=3.0;
	}
	for(i=0;i<=40;i++){
		for(j=0;j<=40;j++){
			db10[i][j]=1.0;
			db20[i][j]=2.0;
			id10[i][j]=2;
			id20[i][j]=3;
			id30[i][j]=4;
			cd10[i][j].dreal=1.0;
			cd10[i][j].dimag=2.0;
			cd20[i][j].dreal=2.0;
			cd20[i][j].dimag=3.0;
		}
	}
	for(i=0;i<=60;i++){
		for(j=0;j<=60;j++){
			cd30[i][j].dreal=4.0;
			cd30[i][j].dimag=8.0;
		}
	}
	for(I=IM4;I<=-IM4+2;I++){
		DA10(I+IT1*IT3)=DA20(I+IT3+IM1)+DA30(I+IM4);
		DA20(I)=DA10(I+IT1*IT2)*DA30(I+IT1-IM2);
		b=(sqrt(DA20(I)+DA10(I+IM2)));
		DVAR1=(b>0.0)?(double)(int)(b+0.5):(double)(int)(b-0.5);
		for(J=10;J>=-IT6;J--){
			DB10(J,I+IM1)=DB20(I,J+IT1+IT4)*2.0 +DB10(J-1,I);
			CD10(I,J).dreal=CD20(I-IM2,J-IM3).dreal+CD30(I+IT6,J+IT6).dreal;
			CD10(I,J).dimag=CD20(I-IM2,J-IM3).dimag+CD30(I+IT6,J+IT6).dimag;
			DX=(double)(sqrt(CD10(J+IM1,I+IM2).dreal));
			DY=(double)(sqrt(CD10(J+IM1,I+IM2).dimag));
			if(DX>0.0)(double)(int)(DX+0.5);
			(double)(int)(DX-0.5);
			if(DY>0.0)(double)(int)(DY+0.5);
			(double)(int)(DY-0.5);
			CD20(J,I).dreal=CD30(I,J+IT4).dreal+(double)(int)(DX);
			CD20(J,I).dimag=CD30(I,J+IT4).dimag+(double)(int)(DY);
			DB20(J+IT2,I)=DB10(I,J)+DB10(J+IM4,I);
LBL_20:
			;
		}
		if ( I > 8 )
		{
			DVAR1=cos(DA20(I+IM1))+2.5;
			DVAR1=(double)(int)(0.5+DVAR1);
		}
		DA30(I-10)=DA10(I+IT1)+DVAR1;
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	for(i=-10;i<=12;i++){
		for(j=10;j>=-10;j--){
			printf("(CD10) (%g,%g) ",CD10(i,j).dreal,CD10(i,j).dimag);
			n=j%5;
			if(n==1||j==-4)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=10;i>=-10;i--){
		for(j=-10;j<=10;j++){
			printf("(CD20) (%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
			n=j%5;
			if(n==-1||j==4)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=10;i>=-10;i--){
		for(j=-10;j<=10;j++){
			printf("(DB10)  %g ",DB10(i,j));
			n=j%5;
			if(n==-1||j==4)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	for(i=10;i>=-10;i--){
		for(j=-10;j<=10;j++){
			printf("(DB20)  %g ",DB20(i,j));
			n=j%5;
			if(n==-1||j==4)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}

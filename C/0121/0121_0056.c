#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DB10(i,j,k) db10[i-1][j-1][k-1]
#define DB20(i,j,k) db20[i-1][j-1][k-1]
#define DB30(i,j,k) db30[i-1][j-1][k-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j,k) ld30[i-1][j-1][k-1]
#define NI          udata1.ni
#define IP          udata1.ip
#define NJ          udata2.nj
#define JP          udata2.jp
double da10[20][20],da20[20][20],da30[20][20];
double db10[10][10][10],db20[10][10][10],db30[10][10][10];
COMPLEX16   cd10[20][20],cd20[20][20],cd30[20][20];
unsigned long int ld10[20],ld20[20][20],ld30[10][10][10];
union {
	int ni,ip;
}udata1;
union {
	int nj,jp;
}udata2;
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=10;
	long int IT4=20;
	long int I,J,NK,K;
	long int i,j,k,n;
	double DX,DY;
	unsigned long int LX;
	for(i=0;i<20;i++){
		for(j=0;j<20;j++){
			da10[i][j]=2.0;
			da20[i][j]=4.0;
			da30[i][j]=1.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				db10[i][j][k]=3.0;
				db20[i][j][k]=5.0;
				db30[i][j][k]=1.0;
			}
		}
	}
	for(i=0;i<20;i++){
		for(j=0;j<20;j++){
			cd10[i][j].dreal=1.0;
			cd10[i][j].dimag=4.0;
			cd20[i][j].dreal=2.0;
			cd20[i][j].dimag=1.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<20;j++){
			cd30[i][j].dreal=3.0;
			cd30[i][j].dimag=6.0;
		}
	}
	for(i=10;i<20;i++){
		for(j=0;j<20;j++){
			cd30[i][j].dreal=5.0;
			cd30[i][j].dimag=2.0;
		}
	}
	for(i=0;i<20;i++){
		ld10[i]=0.0;
	}
	for(i=0;i<20;i++){
		for(j=0;j<20;j++){
			ld20[i][j]=0.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				ld30[i][j][k]=0.0;
			}
		}
	}
	for(I=IT1;I<=IT3-1;I++)
	{
		NJ=I+IT3;
		NI=I;
		for(J=1;J<=IT4;J+=2)
		{
			DA10(I,NJ)=DA30(NI,J)/(double)(IT2);
			DX=(double)(CD10(NJ-1,I).dreal)*DA20(NI+1,J);
			DY=(double)(CD20(NJ,I).dimag)*DA10(J,NJ);
			if ( DX  >   DY )
			{
				LD10(J)=1.0;
				DA20(I,J)=exp(DX)-DY;
				DX=(DX>DY) ? DX:DY;
				if ( DA20(I,J)  >  DX )
				{
					LD20(I,J)=1.0;
					CD10(I+IT3,J).dreal=(double)(DX);
					CD10(I+IT3,J).dimag=(double)(DY);
				}
				else
				{
					LD20(J,I)=1.0;
					CD20(I,NJ).dreal=(double)(DY);
					CD20(I,NJ).dimag=(double)(DA20(J,I));
				}
			}
			NJ=NJ-1;
			NI=NI+1;
LBL_20:
			;
		}
		IP=I+1;
		JP=11;
		for(K=2;K<=9;K++)
		{
			NK=K+1;
			JP=JP-1;
			for(J=IT2;J<=IT2*3;J++)
			{
				CD30(I,NK).dreal=CD10(JP,IP).dreal-CD20(IP,J).dreal;
				CD30(I,NK).dimag=CD10(JP,IP).dimag-CD20(IP,J).dimag;
				LX=!LD30(I,J,K)||!LD10(J);
				if ( LX ==1)
				{
					DX=CD30(JP,NK-1).dimag+(double)(NJ);
					LD30(J,K,I)=!LD20(K,NK);
				}
				else
				{
					DX=(CD10(21-NK,I).dreal>CD30(J,K).dimag) ?
					    (CD10(21-NK,I).dreal):(CD30(J,K).dimag);
					LD30(K,J,I)=!LD10(NK)&&LX;
				}
				DB10(J,I,K)=DB10(J,IP,NK)*DB30(JP,J,K);
				DB20(I,I,J)=DX-DB20(I,J,K);
				DA30(IP,NK)=DA30(IP,NK)+CD30(I,NK).dimag;
			}
LBL_30:
			;
		}
LBL_10:
		;
	}
	printf("  ***  ** NO.1 *** \n");
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA10)  %g ",DA10(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA20)  %g ",DA20(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(DA30)  %g ",DA30(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(CD10) (%g,%g) ",CD10(i,j).dreal,CD10(i,j).dimag);
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(CD20) (%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(CD30) (%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf("(DB10)  %g ",DB10(i,j,k));
				n=k%5;
				if(n==0)printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf("(DB20)  %g ",DB20(i,j,k));
				n=k%5;
				if(n==0)printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		printf("(LD10)  %ld ",LD10(i));
		n=i%5;
		if(i==0)printf("\n");
	}
	for(i=1;i<=20;i++){
		for(j=1;j<=20;j++){
			printf("(LD20)  %ld ",LD20(i,j));
			n=j%5;
			if(i==0)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf("(LD30)  %ld ",LD30(i,j,k));
				n=k%5;
				if(i==0)printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}
	exit (0);
}

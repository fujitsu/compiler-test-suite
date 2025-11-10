#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DA40(i,j) da40[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j) ld30[i-1][j-1]
#define IL10(i) il10[i-1]
#define IL20(i) il20[i-1]
#define IL30(i) il30[i-1]
long int il10[20],il20[20],il30[40];
double da10[20][20],da20[40][10],da30[10][40],da40[20][20];
COMPLEX16 cd10[20][20],cd20[10][40],cd30[40][10];
unsigned long int ld10[20],ld20[20][20],ld30[20][20];
int main()
{
	long int NN,IP,J,JP,I,M1,M2,K1,K2,IP1,IP2,JP1,JP2;
	double DX,DY;
	COMPLEX16 CDX,CDY;
	long int i,j,n;
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			da10[j][i]=1.0;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 10;i++){
			da20[j][i]=4.0;
			da20[j+20][i]=2.0;
		}
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 40;i++){
			da30[j][i]=3.0;
			cd20[j][i].dreal=2.0;
			cd20[j][i].dimag=4.0;
			cd30[i][j].dreal=-3.0;
			cd30[i][j].dimag=5.0;
		}
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 20;i++){
			da40[j][i]=5.0;
			da40[j+10][i]=6.0;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			cd10[j][i].dreal=-1.0;
			cd10[j][i].dimag=-2.0;
		}
	}
	for(j=0;j< 20;j++){
		ld10[j]=0;
		for(i=0;i< 20;i++){
			ld20[j][i]=0;
			ld30[j][i]=0;
		}
	}
	for(I=1;I<=20;I++){
		IL10(I)=I;
		IL20(I)=21-I;
	}
	for(I=1;I<=40;I++){
		IL30(I)=I;
	}
	for(I=2;I<=IL10(10);I++){
		NN=IL20(I);
		for(J=2;J<=NN;J++)
		{
			IP=IL30(J+1);
			JP=IL30(41-J);
			DA10(IL10(I),IL20(J))=DA20(IP,I)*DA30(I,JP);
			CD10(J,IP).dreal=CD20(I,JP).dreal+DA40(J,IP);
			DA40(J,I)=(CD30(JP,I).dimag)-DA10(I-1,IL20(J));
			DX=(double)JP;
			if ( DA40(J,I)  <   DX )
			{
				LD10(J)=!LD20(I,IP);
			}
			else
			{
				LD20(I,J)=!LD30(NN,J);
			}
		}
	}
	NN=1;
	M1=IL10(NN);
	M2=(2 < IL30(NN)) ? 2:IL30(NN);
	for(I=1;I<=IL10(5);I++)
	{
		K1=IL10(I);
		K2=I+M1+M2;
		for(J=2;J<=K2;J++)
		{
			IP1=J+K1+1;
			IP2=J+K1-1;
			JP1=J+M2+K2;
			JP2=J+M2-1;
			DA20(JP2,K1)=DA20(JP1,I)+DA30(M1,JP2);
			DA30(I,JP1)=(DA10(I,J)>DA40(I,J)) ? DA10(I,J):DA40(IP1,I);
			if (LD10(J)==1)
			{
				CDX.dreal=CD10(IP2,J).dreal*CD20(I,IP1).dreal
				    -CD10(IP2,J).dimag*CD20(I,IP1).dimag;
				CDX.dimag=CD10(IP2,J).dreal*CD20(I,IP1).dimag
				    +CD10(IP2,J).dimag*CD20(I,IP1).dreal;
				CDY.dreal=CD30(IP2,I).dreal+CD10(I,J).dreal;
				CDY.dimag=CD30(IP2,I).dimag+CD10(I,J).dimag;
			}
			else
			{
				CDX.dreal=CD30(IP1,K1).dreal-CD10(J,IP2).dreal;
				CDX.dimag=CD30(IP1,K1).dimag-CD10(J,IP2).dimag;
				CDY.dreal=CD20(K1,JP1).dreal;
				CDY.dimag=CD20(K1,JP1).dimag;
			}
			DX=(CDX.dreal);
			DY=(CDY.dimag);
			CD20(K1,JP2).dreal=(double)(DX);
			CD20(K1,JP2).dimag=(double)(DY);
			CD30(IP2,I).dreal=CDX.dreal+CDY.dreal;
			CD30(IP2,I).dimag=CDX.dimag+CDY.dimag;
			CD10(IP2,J).dreal=CDX.dreal-CDY.dreal;
			CD10(IP2,J).dimag=CDX.dimag-CDY.dimag;
			if ( DX  >   DY )
			{
				LD30(I,J)=1;
				DA10(I+M2,J)=DX;
			}
			else
			{
				LD20(I,J)=1;
				DA10(J,I)=DY;
			}
			LD10(J)=!LD20(J,I)||LD30(J,I);
		}
	}
	printf("  ***  *** \n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(DA10)  %g ",DA10(j,i));
			n=i%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=40;j++){
		for(i=1;i<=10;i++){
			printf("(DA20)  %g ",DA20(j,i));
			if(i==5)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=40;i++){
			printf("(DA30)  %g ",DA30(j,i));
			n=i%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(CD10)  %g %g ",CD10(j,i).dreal,CD10(j,i).dimag);
			n=i%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=40;i++){
			printf("(CD20)  %g %g ",CD20(j,i).dreal,CD20(j,i).dimag);
			n=i%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=40;j++){
		for(i=1;i<=10;i++){
			printf("(CD30)  %g %g ",CD30(j,i).dreal,CD30(j,i).dimag);
			if(i==5)printf("\n");
		}
		printf("\n");
	}
	for(i=1;i<=20;i++){
		printf("(LD10)  %ld",LD10(i));
		n=I%5;
		if(n==0)printf("\n");
	}
	printf("\n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(LD20)  %ld",LD20(j,i));
			n=I%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(LD30)  %ld",LD30(j,i));
			n=I%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	exit (0);
}

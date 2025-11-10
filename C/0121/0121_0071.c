#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB2();
int SUB1();
#define DA10(i,j,k) da10[i-1][j-1][k-1]
#define DA20(i,j,k) da20[i-1][j-1][k-1]
#define DA30(i,j,k) da30[i-1][j-1][k-1]
#define DA40(i,j,k) da40[i-1][j-1][k-1]
#define LD10(i,j,k) ld10[i-1][j-1][k-1]
#define LD20(i,j,k) ld20[i-1][j-1][k-1]
#define CD10(i,j,k) cd10[i-1][j-1][k-1]
#define CD20(i,j,k) cd20[i-1][j-1][k-1]
double da10[20][20][20],da20[20][20][20];
double da30[20][20][20],da40[20][20][20];
unsigned long int ld10[20][20][20],ld20[20][20][20];
COMPLEX16 cd10[20][20][20],cd20[20][20][20];
long int NN=20;
int main()
{
	long int I,J,K,i,j,k,n;
	double DX,DY,DZ;
	for(i=1;i<21;i++){
		for(j=1;j<21;j++){
			for(k=1;k<21;k++){
				DA10(i,j,k)=1.0;
				DA20(i,j,k)=2.0;
				DA30(i,j,k)=3.0;
				DA40(i,j,k)=4.0;
				LD10(i,j,k)=0;
				LD20(i,j,k)=0;
			}
		}
	}
	for(I=1;I<=NN;I++){
		DX = (double)(I);
		for(J=1;J<=NN;J++){
			DY = (double)(J);
			for(K=1;K<=NN;K++){
				DZ = (double)(K);
				CD10(I,J,K).dreal = DX;
				CD10(I,J,K).dimag = DY;
				CD20(I,J,K).dreal = DY;
				CD20(I,J,K).dimag = DZ;
LBL_10:
				;
			}
		}
	}
	SUB1();
	SUB2();
	printf(" DA10=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %g ",DA10(i,j,k));
				
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" DA20=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %g ",DA20(i,j,k));
				
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" DA30=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %g ",DA30(i,j,k));
				
			}
			printf("\n");
		}
	}
	printf(" DA40=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %g ",DA40(i,j,k));
				
			}
			printf("\n");
		}
	}
	printf(" LD10=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %ld ",LD10(i,j,k));
				
			}
			printf("\n");
		}
	}
	printf(" LD20=\n");
	for(k=1;k<=20;k++) {
		for(j=1;j<=20;j++) {
			for(i=1;i<=20;i++){
				printf(" %ld ",LD20(i,j,k));
				
			}
			printf("\n");
		}
	}
	exit (0);
}
#define DA10(i,j,k) da10[i-1][j-1][k-1]
#define DA20(i,j,k) da20[i-1][j-1][k-1]
#define DA30(i,j,k) da30[i-1][j-1][k-1]
#define DA40(i,j,k) da40[i-1][j-1][k-1]
#define LD10(i,j,k) ld10[i-1][j-1][k-1]
#define LD20(i,j,k) ld20[i-1][j-1][k-1]
int SUB1()
{
	long int IN,NX,I,J,K,I1,I2,I3;
	double DX,DY;
	IN=1;
	NX=NN-1;
	for(I=1;I<=NX;I++){
		for(J=1;J<=NX;J++){
			for(K=2;K<=NX;K++){
				DX=DA10(I,J,K)/2.0+DA20(I,J,K);
				DY=DA30(I,J,K)/3.0-DA40(I,J,K);
				if( DX > DY )LD10(I,J,K)=1;
				LD20(I,J,K)=!LD20(I,J,K) && LD10(I,J,K);
				CD10(I,J,K).dreal=DX-CD20(I,J,K).dreal;
				CD10(I,J,K).dimag=DY-CD20(I,J,K).dimag;
LBL_30:
				;
			}
			for(K=2;K<=NX;K++){
				DA30(I,J,K) = DA10(I,J,K) * DA20(I,J,K) / DA30(I,J,K)-
				    (CD10(I,J,K-1).dreal / CD20(I,J,K+1).dimag);
				if ( LD10(I,J,K)  &&   LD20(I,J,K))
				{
					DA10(I,J,K) = 0.0;
				}
				else
				{
					CD20(I,J,K).dreal = DA30(I,J,K);
					CD20(I,J,K).dimag = 1.0;
				}
LBL_40:
				;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}
	for(I1=2;I1<=NX;I1+=IN){
		for(I2=2;I2<=NX;I2+=IN){
			DA20(I1,I2,NX) = (double)(I1+I2);
			for(I3=2;I3<=NX;I3+=IN){
				DA30(I1,I2,I3) = DA10(I1,I2,I3) * 2.0 - DA40(I1,I2,I3+1);
				DA40(I1,I2,I3) = DA20(I1,I2+1,I3) - DA30(I1-1,I2,I3+1);
				LD20(I1,I2,I3) = !LD20(I1,I2,I3) && LD10(I1,I2,I3);
				if ( LD20(I1,I2,I3) )
				{
					DA30(I1,I2,I2) = (DA30(I1,I2,I2) < DA40(I1,I2,I3)) ?
					    DA30(I1,I2,I2):DA40(I1,I2,I3);
					CD20(I1,I2,1).dreal-=CD10(I1,I2,I3).dreal;
					CD20(I1,I2,1).dimag-=CD10(I1,I2,I3).dimag;
				}
LBL_50:
				;
			}
		}
LBL_60:
		;
	}
}
#define DA10(i,j,k) da10[i-1][j-1][k-1]
#define DA20(i,j,k) da20[i-1][j-1][k-1]
#define DA30(i,j,k) da30[i-1][j-1][k-1]
#define DA40(i,j,k) da40[i-1][j-1][k-1]
#define LD10(i,j,k) ld10[i-1][j-1][k-1]
#define LD20(i,j,k) ld20[i-1][j-1][k-1]
int SUB2()
{
	long int NX,I1,I2,NY,NZ,II,I3;
	double DX,DY;
	NX=NN-1;
	for(I1=2;I1<=NX;I1++){
		DX=(DA40(I1,NX,NX) > I1) ? DA40(I1,NX,NX):(double)(I1);
		DY=(DA40(I1,NX,NX) > I1) ? DA40(I1,NX,NX):(double)(I1);
		for(I2=2;I2<=NX;I2++){
			for(I3=2;I3<=NX;I3++){
				DA10(I1,I2,I3) = DA20(I1-1,I2,I3) - DA30(I1,I2+1,I3);
				DA20(I1,I2,I3) = DA30(I1,I2+1,I3) - DA40(I1-1,I2,I3);
				CD20(I1,I2,I3).dreal=DX-CD20(I1,I2,I3).dreal;
				CD20(I1,I2,I3).dimag=DY-CD20(I1,I2,I3).dimag;
LBL_10:
				;
			}
		}
	}
	
	NY=NX-2;
	NZ=NX/2;
	for(I1=1;I1<=NZ;I1++){
		for(I2=1;I2<=NY;I2++){
			for(I3=1;I3<=NZ;I3++){
				II=(I1*2)-1;
				if ( LD10(I1,I2,I3) )
				{
					DA20(I1,I2,I3)=(DA30(I1,I2,I3)/2.0)
					    /(CD20(I1,I2,I3).dimag + 3.0);
					DA30(I1,I2,I3) = DA40(I1,I2,I3) / (DA10(II,I2,I3)+1.0);
					goto LBL_30;
				}
				DA40(I1,I2,I3) = CD10(I1,I2,I3).dimag - CD20(I1,I2,I3).dreal;
				LD20(I1,I2,I3) = !LD20(I1,I2,I3);
LBL_30:
				;
			}
			for(I3=1;I3<=NZ;I3++){
				II=I1*2;
				DA10(II,I2,I3) = DA20(I1,I2,I3) - DA40(I1+1,I2+2,I3+3);
				CD20(I1,I2+1,I3+3).dreal=DA30(NX,I2,I3)+CD10(I1,I2,I3).dreal;
				CD20(I1,I2+1,I3+3).dimag=DA30(NX,I2,I3)+CD10(I1,I2,I3).dimag;
				if ( DA10(I1,I2,I3) >  DA20(I1,I2,I3) )
				{
					LD20(I1,I2,I3) = !LD10(I1,I2,I3) && LD20(I1,I2,I3);
				}
LBL_40:
				;
			}
LBL_20:
			;
		}
	}
}

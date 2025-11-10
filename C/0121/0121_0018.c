#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA(i,j)   ia[i-1][j-1]
#define IB(i)     ib[i-1]
#define RA(i,j)   ra[i-1][j-1]
#define RB(i,j,k) rb[i-1][j-1][k-1]
#define DA(i,j)   da[i-1][j-1]
long int ia[10][10],ib[10];
float ra[10][10],rb[10][10][10];
double da[10][10];
int main()
{
	long int ID,I,J,K,i,j,k;

	for(i=0;i< 10;i++){
		ib[i]=i;
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			ia[i][j]=1.;
			ra[i][j]=1.;
			da[i][j]=1.;
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				rb[i][j][k]=1.;
			}
		}
	}
	ID=0;
	for(I=1;I<=10;I++)
	{
LBL_10:
		;
		if (IB(I) <= 8)
		{
			goto LBL_1;
		}
		else
		{
			if (IB(I) == 5)goto LBL_1         ;
		}
		ID=ID+1;
		for(J=1;J<=10;J++)
		{
LBL_13:
			;
			if (IA(I,J) >= 3)goto LBL_14         ;
LBL_14:
			;
			IA(I,J)=I+J+ID;
LBL_15:
			;
			RA(I,J)=IA(I,J)-RA(I,J);
			for(K=1;K<=10;K++)
			{
LBL_16:
				;
				RB(I,J,K)=I+J+K;
LBL_18:
				;
				if (I >= 8)goto LBL_21         ;
				if (K >= 3)goto LBL_2         ;
LBL_17:
				;
				RB(I,J,K)=RB(I,J,K)+1.;
LBL_2:
				;
				if ((K == 5) || (RB(I,J,K) <= 3.)) goto LBL_17         ;
			}
		}
		IB(I)=I-1;
		goto LBL_1;
LBL_21:
		;
		if (I == 3)goto LBL_10         ;
		DA(I,I)=I*I;
LBL_1:
		;
	}
LBL_30:
	;
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" IA= %ld \n",IA(i,j));
		}
	}
	for(i=1;i<=10;i++){
		printf(" IB= %ld \n",IB(i));
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" RA= %g \n",RA(i,j));
		}
	}
	for(k=1;k<=10;k++){
		for(j=1;j<=10;j+=2){
			for(i=1;i<=10;i+=2){
				printf(" RB= %g   ",RB(i,j,k));
				printf(" RB= %g   ",RB(i+1,j,k));
				printf(" RB= %g   ",RB(i,j+1,k));
				printf(" RB= %g \n",RB(i+1,j+1,k));
			}
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i+=2){
			printf(" DA= %g   ",DA(i,j));
			printf(" DA= %g \n",DA(i+1,j));
		}
	}
	ID=0;
LBL_201:
	;
	goto LBL_100;
LBL_200:
	;
	if (ID == 5)goto LBL_300         ;
	ID=ID+1;
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			RA(I,J)=2+I+J;
LBL_110:
			;
		}
	}
	goto LBL_200;
LBL_100:
	;
LBL_300:
	;
	if (ID != 0)goto LBL_400         ;
	for(I=1;I<=10;I++)
	{
		if (IB(I) >= 5)
		{
			printf(" LOOP2\n");
		}
		else
		{
			goto LBL_360;
		}
LBL_310:
		;
		IB(I)=I-1;
		goto LBL_350;
LBL_360:
		;
		for(J=1;J<=10;J++)
		{
			RA(I,J)=RA(I,J)+IB(J);
			if (J >= 3)goto LBL_322         ;
			goto LBL_310;
LBL_322:
			;
			RA(I,J)=0;
LBL_340:
			;
		}
		if (I == 3)goto LBL_350         ;
		goto LBL_120;
LBL_350:
		;
	}
LBL_400:
	;
	printf(" *** LOOP2 ***\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" IA= %ld \n",IA(i,j));
		}
	}
	for(i=1;i<=10;i++){
		printf(" IB= %ld \n",IB(i));
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" RA= %g \n",RA(i,j));
		}
	}
	for(k=1;k<=10;k++){
		for(j=1;j<=10;j+=2){
			for(i=1;i<=10;i+=2){
				printf(" RB= %g   ",RB(i,j,k));
				printf(" RB= %g   ",RB(i+1,j,k));
				printf(" RB= %g   ",RB(i,j+1,k));
				printf(" RB= %g \n",RB(i+1,j+1,k));
			}
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" DA= %g \n",DA(i,j));
		}
	}
LBL_120:
	;
	exit (0);
}
 

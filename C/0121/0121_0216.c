#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i)   i10[i-1]
#define I11(i)   i11[i-1]
#define I12(i,j) i12[i-1][j-1]
#define I13(i,j) i13[i-1][j-1]
#define I14(i,j) i14[i-1][j-1]
#define I15(i,j) i15[i-1][j-1]
#define L10(i)   l10[i-1]
#define L11(i)   l11[i-1]
#define L12(i)   l12[i-1]
#define I20(i)   i20[i-1]
#define I21(i)   i21[i-1]
#define I22(i)   i22[i-1]
#define L20(i)   l20[i-1]
#define L21(i)   l21[i-1]
#define Q20(i,j) q20[i-1][j-1]
#define Q21(i,j) q21[i-1][j-1]
long int          i10[11],i11[10],i12[10][10],
i13[1][1],i14[10][10],i15[10][11];
unsigned long int l10[10]={
	1,0,1,0,1,0,1,0,1,0},
l11[10]={
	1,1,0,0,0,1,1,1,0,0},
l12[10]={
	1,1,0,0,1,1,0,0,1,1};
long int          i20[10],i21[10],i22[11];
unsigned long int l20[5],l21[10]={
	1,1,1,1,1,0,0,0,0,0};
long double       q20[10][10],q21[10][10];
int main()
{
	long int N1=10;
	long int N2=10;
	long int N3=10;
	unsigned long int LS10=1;
	long int I10S=5;
	long int I20S=0;
	float S=0;
	long int J,I,K,IS10=0,I21S=0,I22S=0,I23S=0,I23=0,i,j;
	for(i=0;i< 11;i++){
		i10[i]=i+1;
	}
	for(i=0;i< 10;i++){
		i11[i]=0;
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			i12[i][j]=(i<5)?1:2;
			i14[i][j]=(i+1)*10;
		}
	}
	for(j=0;j< 11;j++){
		for(i=0;i< 10;i++){
			i15[i][j]=i+1;
		}
	}
	for(i=0;i< 10;i++){
		i20[i]=0;
		i21[i]=i+1;
	}
	for(i=0;i< 5;i++){
		l20[i]=1;
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			q20[i][j]=0;
			q21[i][j]=(j<5)?5.6:6.5;
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 -----\n");
	for(I=1;I<=N1;I++)
	{
		for(J=1;J<=N2;J++)
		{
			I10(J+1)=I10(J);
			I11(J)=I10(J)/I12(J,I);
LBL_10:
			;
		}
		I13(1,1)=I13(1,1)+I14(I,I);
		if (L10(I)){
			L10(I)=(L10(I) && L11(I))?1:0;
		}
		else{
			L10(I)=(L10(I) || LS10)?1:0;
		}
		for(K=2;K<=N3;K++)
		{
			I15(K,I)=I10S;
			IS10=I15(K,I+1);
			if ( L12(K)) L12(K) = !L12(K-1);
LBL_11:
			;
		}
LBL_100:
		;
	}
	for(i=1;i<=11;i++){
		printf(" I10 =  %ld \n",I10(i));
	}
	for(i=1;i<=10;i++){
		printf(" I11 =  %ld \n",I11(i));
	}
	for(j=1;j<= 1;j++){
		for(i=1;i<=1;i++){
			printf(" I13 =  %ld \n",I13(i,j));
		}
	}
	for(i=1;i<=10;i++){
		printf(" L10 =  %lu \n",L10(i));
	}
	for(j=1;j<=11;j++){
		for(i=1;i<=10;i++){
			printf(" I15 =  %ld \n",I15(i,j));
		}
	}
	printf(" IS10 =  %ld \n",IS10);
	for(i=1;i<=10;i++){
		printf(" L12 =  %lu \n",L12(i));
	}
	printf(" ----- TEST NO.2 -----\n");
	for(I=2;I<=N1;I++)
	{
		I20(I)=sqrt((float)(I21(I)+I));
		I20S=I20(I)+I21(I)+I20S;
		if ( L20(5) ){
			I21S=(I21S > I20(I)) ? I21S:I20(I);
		}
		for(J=1;J<=N2;J++)
		{
			Q20(I,J)=Q21(I,J);
			I22S=I22S+Q20(I,J);
LBL_20:
			;
			I22S=I22S+I21(J);
		}
		I23S=I21(I);
		if ( L21(I) ){
			I23S=I21(I)+I;
		}
		else{
			I22(I)=I23S;
		}
		I22(I-1)=I23S+(I23 < I22(I)) ? I23:I22(I);
LBL_200:
		;
	}
	for(i=1;i<=10;i++){
		printf(" I20  =  %ld \n",I20(i));
	}
	printf(" I20S =  %ld \n",I20S);
	printf(" I21S =  %ld \n",I21S);
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" Q20  =  %g \n",(double)Q20(i,j));
		}
	}
	printf(" I22S =  %ld \n",I22S);
	for(i=1;i<=11;i++){
		printf(" I22  =  %ld \n",I22(i));
	}
	exit (0);
}

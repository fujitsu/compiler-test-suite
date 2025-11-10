#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define DP1(i) dp1[i-1]
#define DM1(i) dm1[i-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
#define L1 10
#define L2 10
#define L3 10
long int ia1[L1],ib1[L1],ic1[L1];
long int ia2[L1][L2],ib2[L1][L2],ic2[L1][L2];
float ra1[L1],rb1[L1],rc1[L1];
float ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
float ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
double da1[L1],db1[L1],dc1[L1],dp1[L1],dm1[L1];
double da2[L1][L2],db2[L1][L2],dc2[L1][L2];
double da3[L1][L2][L3],db3[L1][L2][L3],dc3[L1][L2][L3];
long double qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];
COMPLEX ca1[L1],cb1[L1],cc1[L1];
COMPLEX ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
COMPLEX ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
unsigned long int la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
int main()
{
	long int IDX1,IDX2,IDX3,I,J,K;
	float AVR,VALB;
	int x,y,z;

	IDX1=IDX2=IDX3=0;

	for(I=1;I<=L1;I++){
		IA1(I)=11-I;
		IB1(I)=I;
		IC1(I)=I;
		RA1(I)=I+2;
		RB1(I)=I+3;
		RC1(I)=I+4;
		DA1(I)=2*I;
		DB1(I)=3*I-2;
		DC1(I)=2*I+3;
		DP1(I)=3*I;
		DM1(I)=2*I;
		ca1[I-1].real=(float)(I);
		ca1[I-1].imag=(float)(I);
		cb1[I-1].real=(float)(I+5);
		cb1[I-1].imag=(float)(I);
		cc1[I-1].real=(float)(2*I);
		cc1[I-1].imag=(float)(3*I);

		for(J=1;J<=L2;J++){
			IA2(I,J)=I*J;
			IB2(I,J)=I-J;
			IC2(I,J)=I+J;
			RA2(I,J)=I*J+5;
			RB2(I,J)=I-J-5;
			RC2(I,J)=I+J*3;
			DA2(I,J)=I*J-2;
			DB2(I,J)=I-J-3;
			DC2(I,J)=I+J-4;
			QA2(I,J)=I*J-5;
			QB2(I,J)=I-J-6;
			QC2(I,J)=I+J-7;
			ca2[I-1][J-1].real=(float)(I+2);
			ca2[I-1][J-1].imag=(float)(J*3);
			ca2[I-1][J-1].real=(float)(I-2);
			ca2[I-1][J-1].imag=(float)(J+3);
			cc2[I-1][J-1].real=(float)(I*2);
			cc2[I-1][J-1].imag=(float)(J-3);

			for(K=1;K<=L3;K++){
				RA3(I,J,K)=I+J+K;
				RB3(I,J,K)=I-J+K;
				RC3(I,J,K)=I+J-K;
				DA3(I,J,K)=I+J-K;
				DB3(I,J,K)=I*J+K;
				DC3(I,J,K)=I+J*K;
				ca3[I-1][J-1][K-1].real=(float)(I+J+K);
				ca3[I-1][J-1][K-1].imag=(float)(I+J*K);
				cb3[I-1][J-1][K-1].real=(float)(I-J+K);
				cb3[I-1][J-1][K-1].imag=(float)(I+J+K);
				cc3[I-1][J-1][K-1].real=(float)(I+J+K);
				cc3[I-1][J-1][K-1].imag=(float)(I-J+K);
				LA3(I,J,K)=(I+J)>(I+K);
				LB3(I,J,K)=(I-J)>(I+K);
				LC3(I,J,K)=(I*J)>(I+K);
			}
		}
LBL_10:
		;
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 -----VI  INVALIDATED      \n");
	for(I=1;I<=L1;I++){
		RB1(I)=RA1(I)*5.0;
		RA1(I)=(RB1(I)+RC1(I))/2.0;
		for(J=1;J<=L2;J++){
			if (RA1(I)  <   3.0){
				ca2[I-1][J-1].real=cb2[I-1][J-1].real*RA1(I);
				ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RA1(I);
			}
			else{
				ca2[I-1][J-1].real=cb2[I-1][J-1].real*3.0;
				ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*3.0;
			}
			DB2(IA1(I),IB1(J))=DC2(I,J);
LBL_730:
			;
		}
LBL_720:
		;
	}
	for(x=0;x<L1;x++){
		for(y=0;y<L2;y++){
			printf("  ca2[%2d][%2d].real=%f",x,y,ca2[x][y].real);
			printf("  ca2[%2d][%2d].imag=%f\n",x,y,ca2[x][y].imag);
		}
	}
	for(x=1;x<=L1;x++){
		for(y=1;y<=L2;y++){
			printf("  DB2(%2d,%2d)=%f\n",x,y,DB2(x,y));
		}
	}
	printf(" ----- TEST NO.2 ----- VI(I) IF IDX1>IDX2    \n");
	for(I=1;I<=IDX1;I++){
		RA1(I)=(RB1(I)+RC1(I))/2.0;
		for(J=1;J<=IDX2;J++){
			if (RA1(I)  <   RB1(I)){
				ca2[I-1][J-1].real=cb2[I-1][J-1].real*RA1(I);
				ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RA1(I);
			}
			else{
				ca2[I-1][J-1].real=cb2[I-1][J-1].real*RB1(I);
				ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RB1(I);
			}
LBL_830:
			;
		}
		DB2(IA1(I),3)=DC2(3,I);
LBL_820:
		;
	}
	for(x=0;x<L1;x++){
		for(y=0;y<L2;y++){
			printf("  ca2[%2d][%2d].real=%f",x,y,ca2[x][y].real);
			printf("  ca2[%2d][%2d].imag=%f\n",x,y,ca2[x][y].imag);
		}
	}
	for(x=1;x<=L1;x++){
		for(y=1;y<=L2;y++){
			printf("  DB2(%2d,%2d)=%f\n",x,y,DB2(x,y));
		}
	}
	printf(" ----- TEST NO.3 ----- BROTHER LOOPS            \n");
	for(I=1;I<=L1;I++){
		AVR=(RB1(I)+RC1(I))/2.0;
		VALB=RB1(I);
		for(J=1;J<=L2;J++){
			for(K=1;K<=IDX3;K++){
				ca3[I-1][J-1][K-1].real =
				    (cb3[I-1][J-1][K-1].real*cc3[I-1][J-1][K-1].real
				    -  cb3[I-1][J-1][K-1].imag*cc3[I-1][J-1][K-1].imag)
				    +  AVR;
				ca3[I-1][J-1][K-1].imag  =
				    cb3[I-1][J-1][K-1].real*cc3[I-1][J-1][K-1].imag
				    +  cb3[I-1][J-1][K-1].imag*cc3[I-1][J-1][K-1].real;
				if(cos(AVR) >= cos(VALB)){
					RA3(I,J,K)=RA3(I,J,K)*RB3(I,J,K);
				}
				else{
					RA3(I,J,K)=RA3(I,J,K)+RC3(I,J,K);
				}
				DA3(I,J,K)=DA3(I,J,K)/DB3(I,J,K);
LBL_80:
				;
			}
			if (AVR >  RB2(I,J))RA2(I,J)=sin(AVR);
			else RA2(I,J)=cos(RA2(I,J));
LBL_90:
			;
		}
		for(J=1;J<=L2;J++){
			for(K=1;K<=J;K++){
				if (IC2(K,J)  !=  0)IA2(K,J)=IB2(J,K)/IC2(K,J);
				else IA2(K,J)=IB2(J,K);
LBL_40:
				;
			}
LBL_50:
			;
		}
		if (IC1(I) != 0) IC1(I) = IB1(I) % IC1(I);
		DA1(I)=DB2(IA1(IB1(I)),5);
		RC1(I)=RC1(I)*RC1(I);
LBL_100:
		;
	}
	for(x=1;x<=L1;x++)printf(" DA1(%2d)=%f",x,DA1(x));

	
	printf("\n");
	

	for(x=1;x<=L1;x++){
		for(y=1;y<=L2;y++){
			for(z=1;z<=L3;z++){
				printf(" RA3(%2d,%2d,%2d)=%f",x,y,z,RA3(x,y,z));
			}
			
			printf("\n");
			
		}
	}
	for(x=0;x<L1;x++){
		for(y=0;y<L2;y++){
			for(z=0;z<L3;z++){
				printf(" ca3[%2d][%2d][%2d].real=%f",x,y,z,ca3[x][y][z].real);
				printf(" ca3[%2d][%2d][%2d].imag=%f",x,y,z,ca3[x][y][z].imag);
			}
			
			printf("\n");
			
		}
	}
	for(x=1;x<=L1;x++){
		for(y=1;y<=L2;y++){
			printf(" IA2(%2d,%2d)=%d",x,y,IA2(x,y));
		}
		
		printf("\n");
		
	}
	for(x=1;x<=L1;x++)printf(" IA1(%2d)=%d",x,IA1(x));
	
	printf("\n");
	
	exit (0);
}

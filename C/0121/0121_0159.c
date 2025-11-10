#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1 10
#define L2 10
#define L3 10
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
long int ia1[L1],ib1[L1],ic1[L1];
long int ia2[L1][L2],ib2[L1][L2],ic2[L1][L2];
float ra1[L1],rb1[L1],rc1[L1];
float ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
float ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
double da1[L1],db1[L1],dc1[L1],dp1[L1],dm1[L1];
double da2[L1][L2],db2[L1][L2],dc2[L1][L2];
double da3[L1][L2][L3],db3[L1][L2][L3],dc3[L1][L2][L3];
long double qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];

unsigned long int la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
int main()
{
	
	COMPLEX8 ca1[L1],cb1[L1],cc1[L1];
	COMPLEX8 ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
	COMPLEX8 ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
	long int I,J,K;
	float S,AVR,VALB;
	int i,j,k;
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
			cb2[I-1][J-1].real=(float)(I-2);
			cb2[I-1][J-1].imag=(float)(J+3);
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
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- LIST VECTOR : INNER      \n");
	for(I=1;I<=L1;I++){
		S=RA1(I);
		RA1(I)=(RB1(I)+RC1(I))/2.0;
		for(J=1;J<=L2;J++){
			if(RA1(I)<S){
	                  ca2[I-1][J-1].real=cb2[I-1][J-1].real*RA1(I);
		          ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RA1(I);
			}
			else{
		          ca2[I-1][J-1].real=cb2[I-1][J-1].real*S;
		          ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*S;
			}
			DB2(IA1(I),IB1(J))=DC2(I,J);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
		   printf("  ca2[%d][%d].real=%g\n",i,j,ca2[i][j].real);
		}  
		printf("\n");
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			printf("  DB2(%d,%d)=%g\n",i,j,DB2(i,j));
		}  
		printf("\n");
	}
	printf(" ----- TEST NO.2 ----- LIST VECTOR : OUTER      \n");
	for(I=1;I<=L1;I++){
		RA1(I)=(RB1(I)+RC1(I))/2.0;
		for(J=1;J<=L2;J++){
			if(RA1(I)<RB1(I)){
			   ca2[I-1][J-1].real=cb2[I-1][J-1].real*RA1(I);
			   ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RA1(I);
			}
			else{
			   ca2[I-1][J-1].real=cb2[I-1][J-1].real*RB1(I);
			   ca2[I-1][J-1].imag=cb2[I-1][J-1].imag*RB1(I);
			}
		}
		DB2(IA1(I),3)=DC2(3,I);
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
		   printf("  ca2[%d][%d].real=%g\n",i,j,ca2[i][j].real);
		}  
		printf("\n");
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("  DB2(%d,%d)=%g\n",i,j,DB2(i,j));
		}  
		printf("\n");
	}
	printf(" ----- TEST NO.3 ----- LIST VECTOR : OUTER      \n");
	for(I=1;I<=L1;I++){
		AVR=(RB1(I)+RC1(I))/2.0;
		VALB=RB1(I);
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				ca3[I-1][J-1][K-1].real=cb3[I-1][J-1][K-1].real*cc3[I-1][J-1][K-1].real+AVR;
				ca3[I-1][J-1][K-1].imag=cb3[I-1][J-1][K-1].imag*cc3[I-1][J-1][K-1].imag+AVR;
				if(cos(AVR)>=sin(VALB)){
					RA3(I,J,K)=RA3(I,J,K)*RB3(I,J,K);
				}
				else{
					RA3(I,J,K)=RA3(I,J,K)+RC3(I,J,K);
				}
				DA3(I,J,K)=DA3(I,J,K)/DB3(I,J,K);
			}
			if(AVR>RB2(I,J)){
				RA2(I,J)=sin(AVR);
			}
			else{
				RA2(I,J)=cos(RA2(I,J));
			}
		}
		DA1(I)=DB2(IA1(IB1(I)),5);
		RC1(I)=pow(RC1(I),2);
	}
	for(i=1;i<=10;i++){
		printf(" DA1(%d)=%g\n",i,DA1(i));
	}   
	printf("\n");
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			for(k=1;k<=10;k++){
				printf(" RA3(%d,%d,%d)=%g\n",i,j,k,RA3(i,j,k));
			}
		}
	}   
	printf("\n");
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				printf(" ca3[%d][%d][%d].real=%g\n",
				    i,j,k,ca3[i][j][k].real);
				printf(" ca3[%d][%d][%d].imag=%g\n",
				    i,j,k,ca3[i][j][k].imag);
			}
		}
	}
	exit (0);
}

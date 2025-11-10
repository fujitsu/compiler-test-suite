#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int main()
{
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
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
#define L1  10
#define L2  10
#define L3  10
	long int IDX1=10;
	long int IDX2=10;
	long int IDX3=10;
	long int  ia1[L1],ib1[L1],ic1[L1];
	long int  ia2[L1][L2],ib2[L1][L2],ic2[L1][L2];
	float  ra1[L1],rb1[L1],rc1[L1];
	float  ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
	float  ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
	double  da1[L1],db1[L1],dc1[L1],dp1[L1],dm1[L1];
	double  da2[L1][L2],db2[L1][L2],dc2[L1][L2];
	double  da3[L1][L2][L3],db3[L1][L2][L3],dc3[L1][L2][L3];
	long double  qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];
	COMPLEX  ca1[L1],cb1[L1],cc1[L1];
	COMPLEX  ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
	COMPLEX  ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
	unsigned long int  la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
	long int i,j,INDA,INDB,INDC,k;

	for(i=1;i<=L1;i++){
		IA1(i)=11-i;
		IB1(i)=i;
		IC1(i)=i;
		RA1(i)=i+2;
		RB1(i)=i+3;
		RC1(i)=i+4;
		DA1(i)=2*i;
		DB1(i)=3*i-2;
		DC1(i)=2*i+3;
		DP1(i)=3*i;
		DM1(i)=2*i;
		ca1[i-1].real=(float)(i);
		ca1[i-1].imag=(float)(i);
		cb1[i-1].real=(float)(i+5);
		cb1[i-1].imag=(float)(i);
		cc1[i-1].real=(float)(2*i);
		cc1[i-1].imag=(float)(3*i);

		for(j=1;j<=L2;j++){
			IA2(i,j)=i*j;
			IB2(i,j)=i-j;
			IC2(i,j)=i+j;
			RA2(i,j)=i*j+5;
			RB2(i,j)=i-j-5;
			RC2(i,j)=i+j*3;
			DA2(i,j)=i*j-2;
			DB2(i,j)=i-j-3;
			DC2(i,j)=i+j-4;
			QA2(i,j)=i*j-5;
			QB2(i,j)=i-j-6;
			QC2(i,j)=i+j-7;
			ca2[i-1][j-1].real=(float)(i+2);
			ca2[i-1][j-1].imag=(float)(j*3);
			cb2[i-1][j-1].real=(float)(i-2);
			cb2[i-1][j-1].imag=(float)(j+3);
			cc2[i-1][j-1].real=(float)(i*2);
			cc2[i-1][j-1].imag=(float)(j-3);

			for(k=1;k<=L3;k++){
				RA3(i,j,k)=i+j+k;
				RB3(i,j,k)=i-j+k;
				RC3(i,j,k)=i+j-k;
				DA3(i,j,k)=i+j-k;
				DB3(i,j,k)=i*j+k;
				DC3(i,j,k)=i+j*k;
				ca3[i-1][j-1][k-1].real=(float)(i+j+k);
				ca3[i-1][j-1][k-1].imag=(float)(i+j*k);
				cb3[i-1][j-1][k-1].real=(float)(i-j+k);
				cb3[i-1][j-1][k-1].imag=(float)(i+j+k);
				cc3[i-1][j-1][k-1].real=(float)(i+j+k);
				cc3[i-1][j-1][k-1].imag=(float)(i-j+k);
				LA3(i,j,k)=(i+j)>(i+k);
				LB3(i,j,k)=(i-j)>(i+k);
				LC3(i,j,k)=(i*j)>(i+k);
			}
		}
	}
	printf(" #####  #####  \n");

	printf(" ----- TEST NO.1 ----- \n");
	INDA=1;
	INDB=1;
	INDC=1;

	for(i=1;i<=L1;i+=2){
		IA1(i)=IB1(i)+IC1(i);
		if (IA1(i) >  10){
			INDA=INDA+1;
			DA2(3,INDA)=IA1(i);
		} else if(IA1(i) > 5){
			INDB=INDB+1;
			DB2(3,INDB)=-IA1(i);
		}
		else if(IA1(i) > 0){
			INDC=INDC+1;
			DC2(3,INDC)=IA1(i)*IA1(i);
		}
		for(j=1;j<=L2;j+=2){
			RA1(j)=RB1(j)+RC1(j);
			for(k=2;k<=L3;k+=2)
				RA2(j,k)=RB2(j,k-1)*RC2(j,k);
		}
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DA2(%2ld,%2ld)= %3g ",i,j,DA2(i,j));
		}
		printf("\n");
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DB2(%2ld,%2ld)= %3g ",i,j,DB2(i,j));
		}
		printf("\n");
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DC2(%2ld,%2ld)= %3g ",i,j,DC2(i,j));
		}
		printf("\n");
	}

	for(i=1;i<=L1;i++){
		if(!((i-1)%2))
			printf("\n");
		printf("  RA1(%2ld)= %3g ",i,RA1(i));
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  RA2(%2ld,%2ld)= %g ",i,j,RA2(i,j));
		}
		printf("\n");
	}

	printf(" ----- TEST NO.2 ----- \n");

	INDA=1;
	INDB=1;
	INDC=1;

	for(i=1;i<=L1;i+=2){
		IA1(i)=IB1(i)+IC1(i);
		if((IA1(i) <= 5) && (IA1(i) > 0)){
			INDC++;
			DC2(3,INDC)=IA1(i)*IA1(i);
		}

		for(j=1;j<=L2;j+=2){
			RA1(j)=RB1(j)+RC1(j);
			for(k=2;k<=L3;k+=2)
				RA2(j,k)=RB2(j,k-1)*RC2(j,k);
		}

		if(IA1(i) > 10){
			INDA++;
			DA2(3,INDA)=IA1(i);
		} else if(IA1(i) > 5){
			INDB++;
			DB2(3,INDB)= -IA1(i);
		}

	}
	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DC2(%2ld,%2ld)= %3g ",i,j,DC2(i,j));
		}
		printf("\n");
	}

	for(i=1;i<=L1;i++){
		printf("  RA1(%2ld)= %3g ",i,RA1(i));
		if(!((i-1)%2))
			printf("\n");
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  RA2(%2ld,%2ld)= %g ",i,j,RA2(i,j));
		}
		printf("\n");
	}
	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DA2(%2ld,%2ld)= %3g ",i,j,DA2(i,j));
		}
		printf("\n");
	}

	for(i=1;i<=L1;i++){
		for(j=1;j<=L2;j++){
			if(!((j-1)%2))
				printf("\n");
			printf("  DB2(%2ld,%2ld)= %3g ",i,j,DB2(i,j));
		}
		printf("\n");
	}

	exit (0);
}

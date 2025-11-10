#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub1(COMPLEX8 ceb[10][10],COMPLEX8 cec[10][10][10],long int N);
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define RD(i,j,k,l) rd[i-1][j-1][k-1][l-1]
#define DA(i) da[i-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define DD(i,j,k,l) dd[i-1][j-1][k-1][l-1]
#define QA(i) qa[i-1]
#define QB(i,j) qb[i-1][j-1]
#define QC(i,j,k) qc[i-1][j-1][k-1]

float ra[10],rb[10][10],rc[10][10][10],rd[10][10][10][10];
double da[10],db[10][10],dc[10][10][10],dd[10][10][10][10];
long double qa[10],qb[10][10],qc[10][10][10];
COMPLEX8 cea[10],ceb[10][10],cec[10][10][10];
int main (void)
{
	long int J2=2;
	long int ID1=11;
	long int I1,I2,I3,I4,i,j,k,l;
	int m;
	for(i=0;i< 10;i++){
		ra[i]=1.;
		da[i]=1.;
		qa[i]=1.;
		cea[i].real=1.;
		cea[i].imag=1.;
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			rb[i][j]=1.;
			db[i][j]=1.;
			qb[i][j]=1.;
			ceb[i][j].real=1.;
			ceb[i][j].imag=1.;
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				rc[i][j][k]=1.;
				dc[i][j][k]=1.;
				qc[i][j][k]=1.;
				cec[i][j][k].real=1.;
				cec[i][j][k].imag=1.;
			}
		}
	}
	for(l=0;l< 10;l++){
		for(k=0;k< 10;k++){
			for(j=0;j< 10;j++){
				for(i=0;i< 10;i++){
					rd[i][j][k][l]=1.;
					dd[i][j][k][l]=1.;
				}
			}
		}
	}

	for(I1=1;I1<=10;I1++){
		for(I2=1;I2<=10;I2++){
			for(I3=1;I3<=10;I3++){
				for(I4=1;I4<=10;I4++){
					RD(I1,I2,I3,I4)=RA(I1)+RA(I2)+RA(I3)+RA(I4);
					DD(I1,I3,I2,I4)=DA(I1)*DA(I2)+DA(I3)-DA(I4);
					if (RD(I1,I2,I3,I4) >  3.) RB(I1,I2)=0.0;
				}
				RC(I3,I2,I1)=RD(I3,I2,I1,I1);
				QC(I3,I2,I1)=RC(I3,I2,I1)*RA(I1);
				ID1=ID1-1;
				if (ID1 <= 0) continue;
				else DC(ID1,ID1,ID1)=0.0;
			}
			RB(I2*J2-I2,I1)=RA(I2)*RA(I1)+ceb[I2-1][I1-1].real;
			ID1=11;
		}
	}
	printf(" **** LOOP1 **\n");
	for(l=0;l< 10;l++){
		for(k=0;k< 10;k++){
			for(j=0;j< 10;j++){
				for(i=0;i< 10;i++){
					printf(" RD[%d][%d][%d][%d]=%g",i,j,k,l,rd[i][j][k][l]);
				}
				
				printf("\n");
				
			}
		}
	}
	for(l=0;l< 10;l++){
		for(k=0;k< 10;k++){
			for(j=0;j< 10;j++){
				for(i=0;i< 10;i++){
					printf(" DD[%d][%d][%d][%d]=%g",i,j,k,l,dd[i][j][k][l]);
				}
				
				printf("\n");
				
			}
		}
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			printf(" RB[%d][%d]=%g",i,j,rb[i][j]);
		}
		
		printf("\n");
		
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				printf(" RC[%d][%d][%d]=%g",i,j,k,rc[i][j][k]);
			}
			
			printf("\n");
			
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				printf(" QC[%d][%d][%d]=%g",i,j,k,(double)qc[i][j][k]);
			}
			
			printf("\n");
			
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				printf(" DC[%d][%d][%d]=%g",i,j,k,dc[i][j][k]);
			}
			
			printf("\n");
			
		}
	}

	for(I1=1;I1<=10;I1++){
		for(I2=1;I2<=10;I2++){
			if (RA(I1) == 1 || RB(I2,I1) != 1) sub1(ceb,cec,10);
			DB(I1,I2)=cea[I1-1].real+ceb[I1-1][I2-1].real*cea[I1-1].real;
			QB(I1,I2)=DB(I1,I2)+RA(I1);
			for(I3=1;I3<=10;I3++){
				m=I1+I2-I3;
				switch(m){
				case 1: 
					goto LBL_24;
				case 2: 
					goto LBL_25;
				case 3: 
					goto LBL_26;
				}
LBL_24:
				;
				RC(I1,I2,I3)=0.0;
				goto LBL_27;
LBL_25:
				;
				RC(I1,I2,I3)=RA(I1);
				goto LBL_27;
LBL_26:
				;
				RC(I1,I2,I3)=DA(I1);
LBL_27:
				;
				DC(I1,I3,I2)=DC(I1,I3,I2)+I1+I2+I3;
			}
		}
	}
	printf(" ** LOOP2 **  **\n");
	for(i=0;i< 10;i++){
		printf(" DA[%d]=%g",i,da[i]);
	}
	
	printf("\n");
	
	for(i=0;i< 10;i++){
		printf(" QA[%d]=%g",i,(double)qa[i]);
	}
	
	printf("\n");
	
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				printf(" RC[%d][%d][%d]=%g",i,j,k,rc[i][j][k]);
			}	
			
			printf("\n");
			
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				printf(" DC[%d][%d][%d]=%g",i,j,k,dc[i][j][k]);
			}
			
			printf("\n");
			
		}
	}
	exit (0);
}
int sub1(COMPLEX8 ceb[10][10],COMPLEX8 cec[10][10][10],long int N)
{
	COMPLEX8 NN,NNN;
	long int I1,I3,I2;
	for(I1=1;I1<=10;I1++){
		for(I2=1;I2<=10;I2++){
			for(I3=1;I3<=10;I3++){
				cec[I3-1][I2-1][I1-1].real=ceb[I3-1][I2-1].real+cec[I3-1][I2-1][I1-1].real;
				cec[I3-1][I2-1][I1-1].imag=ceb[I3-1][I2-1].imag+cec[I3-1][I2-1][I1-1].imag;
				if (cec[I3-1][I2-1][I1-1].real==1. && cec[I3-1][I2-1][I1-1].imag==1.){
					cec[I3-1][I2-1][I1-1].real=ceb[I3-1][2].real+cec[I3-1][I2-1][I1-1].real;
					cec[I3-1][I2-1][I1-1].imag=ceb[I3-1][2].imag+cec[I3-1][I2-1][I1-1].imag;
				}
			}
		}
	}
	return 0;
}

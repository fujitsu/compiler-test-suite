#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int OPSEL();
int CMEX();
int LIST();
int MASK();
int main()
{
	printf(" *****\n");
	MASK();
	LIST();
	CMEX();
	OPSEL();
	exit (0);
}
#define RA(i) ra[i-1+6]
#define RB(i) rb[i-1+6]
#define RC(i) rc[i-1]
#define RD(i,j) rd[i-1][j-1]
#define DC(i,j) dc[i-1][j-1]
#define DA(i) da[i-1+6]
#define DB(i) db[i-1+6]
#define QA(i) qa[i-1+6]
#define QC(i,j) qc[i-1][j-1]
#define CEA(i) cea[i-1+6]
#define CEB(i) ceb[i-1+6]
#define CEC(i,j) cec[i-1][j-1]
#define CED(i,j) ced[i-1][j-1]
#define CDA(i) cda[i-1+6]
#define CDB(i) cdb[i-1+6]
#define CDC(i,j) cdc[i-1][j-1]
#define CDD(i,j) cdd[i-1][j-1]
#define CQA(i) cqa[i-1+6]
#define CQC(i,j) cqc[i-1][j-1]
#define LBA(i) lba[i-1+6]
#define L4A(i) l4a[i-1+6]
#define L4B(i) l4b[i-1]
#define L4C(i,j) l4c[i-1][j-1]
#define L4D(i,j) l4d[i-1][j-1]
#define ID(i,j) id[i-1][j-1]
int MASK()
{
	float ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                1.0, 1.0, 1.0, 1.0, 1.0,
		                2.0, 2.0, 2.0, 2.0, 2.0,
		                2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                3.0, 3.0, 3.0, 3.0, 3.0,
		                0.0, 0.0, 0.0, 0.0, 0.0,
		                0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                1.0, 1.0, 1.0, 1.0, 1.0 	};
	float rd[10][10];
	double dc[10][10];
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                 5.0, 5.0, 5.0, 5.0, 5.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                      2.0, 2.0, 2.0, 2.0, 2.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	COMPLEX8 cea[16]={ 
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		} 
	};
	COMPLEX8 ceb[16]={ 
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		} 
	};
	COMPLEX8 cec[10][10];
	COMPLEX8 ced[10][10];
	COMPLEX16 cda[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	COMPLEX16 cdb[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 cdc[10][10];
	COMPLEX16 cdd[10][10];
	COMPLEX32 cqa[16]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX32 cqc[10][10];
	unsigned char lba[21]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		                         0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 	};
	unsigned long int l4t=1;
	unsigned long int l4a[16]={ 
		1, 1, 1, 1, 1, 1, 1, 1,
		                             0, 0, 0, 0, 0, 1, 1, 1 	};
	unsigned long int l4b[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 1, 1 	};
	unsigned long int l4c[10][10],l4d[10][10];
	long int id[10][10];
	float RMIN=0.;
	float RMAX=0.;
	float RSUM=0.;
	float RSM=0.;
	long int JMAX=0;
	long int JMIN=0;
	long int I1,I2;
	long int I,J,K,i,j,k,CTR,NCWNR=8,CWNR=8;
	float DIF=0.,DF=0.;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
				rd[i][j]=1.0;
				dc[i][j]=1.0;
				qc[i][j]=2.0;
				cec[i][j].real=1.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=1.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=0.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=0.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=0.0;
				cqc[i][j].qimag=1.0;
			}
			else
			{
				rd[i][j]=2.0;
				dc[i][j]=2.0;
				qc[i][j]=1.0;
				cec[i][j].real=0.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=0.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=2.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=2.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=2.0;
				cqc[i][j].qimag=1.0;
			}
			CTR++;
		}
	}
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<10)
			{
				l4c[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RMIN=10000.0;
	RMAX=0.0;
	for(I1=-5;I1<=10;I1+=2)
	{
		DIF=RMIN-RA(I1);
		if (RA(I1) >= 1.0 || RA(I1) <= 0.0)
		{
			RB(I1)=0.0;
			CEA(I1).real=RB(I1)+CEB(I1).real-CEB(I1).imag*2.0;
			CEA(I1).imag=RA(I1)+CEB(I1).real*2.0+CEB(I1).imag;
			CDA(I1).dreal=  CEA(I1).real*CDA(I1).dreal
			    - CEA(I1).imag*CDA(I1).dimag;
			CDA(I1).dimag=  CEA(I1).real*CDA(I1).dimag
			    - CEA(I1).imag*CDA(I1).dreal;
			CQA(I1).qreal=CDA(I1).dreal+CQA(I1).qreal+CEA(I1).real;
			CQA(I1).qimag=CDA(I1).dimag+CQA(I1).qimag+CEA(I1).imag;
		}
		else
		{
			RSUM=RSUM+RB(I1);
			DF=RMAX-RC(I1);
			if (DF<=0) goto LBL_102;
LBL_101:
			;
			RMAX=RC(I1);
			JMAX=I1;
LBL_102:
			;
		}
		if (DIF<=0) goto LBL_104;
LBL_103:
		;
		RMIN=RA(I1);
		JMIN=I1;
LBL_104:
		;
		if (L4A(I1)==1)
		{
			RSM=0.0;
			for(I2=10;I2>=-5;I2-=2)
			{
				if (L4A(I1)==1)
				{
					CEB(I1).real=RA(I1)+RB(I1)*DA(I1);
					CEB(I1).imag=RB(I1)*DB(I2);
					CDB(I1).dreal=0.;
					CDB(I1).dimag=CEB(I1).imag;
					RSM=RSM+fabs(CDB(I1).dreal);
				}
LBL_12:
				;
			}
			printf("** (ROOP) **\n");
			printf(" RSM = %g\n",RSM);
			printf("\n");
			CTR=0;
			printf(" CEB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CEB(I).real,CEB(I).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
			CTR=0;
			printf(" CDB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CDB(I).dreal,CDB(I).dimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
		}
LBL_11:
		;
	}
	printf("****\n");
	printf(" RMIN = %g\n",RMIN);
	printf(" JMIN = %ld\n",JMIN);
	printf(" RMAX = %g\n",RMAX);
	printf(" JMAX = %ld\n",JMAX);
	CTR=0;
	printf(" RB =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CDA(I).dreal,CDA(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",(double)CQA(I).qreal,(double)CQA(I).qimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	return 0;
}
int LIST()
{
	float ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                1.0, 1.0, 1.0, 1.0, 1.0,
		                2.0, 2.0, 2.0, 2.0, 2.0,
		                2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                3.0, 3.0, 3.0, 3.0, 3.0,
		                0.0, 0.0, 0.0, 0.0, 0.0,
		                0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                1.0, 1.0, 1.0, 1.0, 1.0 	};
	float rd[10][10];
	double dc[10][10];
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                 5.0, 5.0, 5.0, 5.0, 5.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                      2.0, 2.0, 2.0, 2.0, 2.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	COMPLEX8 cea[16]={ 
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		} 
	};
	COMPLEX8 ceb[16]={ 
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		} 
	};
	COMPLEX8 cec[10][10];
	COMPLEX8 ced[10][10];
	COMPLEX16 cda[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	COMPLEX16 cdb[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 cdc[10][10];
	COMPLEX16 cdd[10][10];
	COMPLEX32 cqa[16]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX32 cqc[10][10];
	unsigned char lba[21]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		                         0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 	};
	unsigned long int l4t=1;
	unsigned long int l4a[16]={ 
		1, 1, 1, 1, 1, 1, 1, 1,
		                             0, 0, 0, 0, 0, 1, 1, 1 	};
	unsigned long int l4b[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 1, 1 	};
	unsigned long int l4c[10][10],l4d[10][10];
	long int id[10][10];
	float RMIN=0.;
	float RMAX=0.;
	float RSUM=0.;
	float RSM=0.;
	long int JMAX=0;
	long int JMIN=0;
	long int I1,I2;
	long int I,J,K,i,j,k,CTR,NCWNR=8,CWNR=8;
	float DIF=0.,DF=0.;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
				rd[i][j]=1.0;
				dc[i][j]=1.0;
				qc[i][j]=2.0;
				cec[i][j].real=1.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=1.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=0.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=0.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=0.0;
				cqc[i][j].qimag=1.0;
			}
			else
			{
				rd[i][j]=2.0;
				dc[i][j]=2.0;
				qc[i][j]=1.0;
				cec[i][j].real=0.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=0.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=2.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=2.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=2.0;
				cqc[i][j].qimag=1.0;
			}
			CTR++;
		}
	}
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<10)
			{
				l4c[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RMIN=10000.0;
	RMAX=0.0;
	for(I1=-5;I1<=10;I1+=2)
	{
		DIF=RMIN-RA(I1);
		if (RA(I1) >= 1.0 || RA(I1) <= 0.0)
		{
			RB(I1)=0.0;
			CEA(I1).real=RB(I1)+CEB(I1).real-CEB(I1).imag*2.0;
			CEA(I1).imag=RA(I1)+CEB(I1).real*2.0+CEB(I1).imag;
			CDA(I1).dreal=  CEA(I1).real*CDA(I1).dreal
			    - CEA(I1).imag*CDA(I1).dimag;
			CDA(I1).dimag=  CEA(I1).real*CDA(I1).dimag
			    - CEA(I1).imag*CDA(I1).dreal;
			CQA(I1).qreal=CDA(I1).dreal+CQA(I1).qreal+CEA(I1).real;
			CQA(I1).qimag=CDA(I1).dimag+CQA(I1).qimag+CEA(I1).imag;
		}
		else
		{
			RSUM=RSUM+RB(I1);
			DF=RMAX-RC(I1);
			if (DF<=0) goto LBL_102;
LBL_101:
			;
			RMAX=RC(I1);
			JMAX=I1;
LBL_102:
			;
		}
		if (DIF<=0) goto LBL_104;
LBL_103:
		;
		RMIN=RA(I1);
		JMIN=I1;
LBL_104:
		;
		if (L4A(I1)==1)
		{
			RSM=0.0;
			for(I2=10;I2>=-5;I2-=2)
			{
				if (L4A(I1)==1)
				{
					CEB(I1).real=RA(I1)+RB(I1)*DA(I1);
					CEB(I1).imag=RB(I1)*DB(I2);
					CDB(I1).dreal=0.;
					CDB(I1).dimag=CEB(I1).imag;
					RSM=RSM+fabs(CDB(I1).dreal);
				}
LBL_12:
				;
			}
			printf("** **LIST**(ROOP) **\n");
			printf(" RSM = %g\n",RSM);
			printf("\n");
			CTR=0;
			printf(" CEB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CEB(I).real,CEB(I).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
			CTR=0;
			printf(" CDB =");
			for(I=-5;I<=15;I++){
				printf(" (%g,%g)",CDB(I).dreal,CDB(I).dimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
		}
LBL_11:
		;
	}
	printf("****LIST**\n");
	printf(" RMIN = %g\n",RMIN);
	printf(" JMIN = %ld\n",JMIN);
	printf(" RMAX = %g\n",RMAX);
	printf(" JMAX = %ld\n",JMAX);
	CTR=0;
	printf(" RB =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CDA(I).dreal,CDA(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",(double)CQA(I).qreal,(double)CQA(I).qimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	return 0;
}
int CMEX()
{
	float ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                1.0, 1.0, 1.0, 1.0, 1.0,
		                2.0, 2.0, 2.0, 2.0, 2.0,
		                2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                3.0, 3.0, 3.0, 3.0, 3.0,
		                0.0, 0.0, 0.0, 0.0, 0.0,
		                0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                1.0, 1.0, 1.0, 1.0, 1.0 	};
	float rd[10][10];
	double dc[10][10];
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                 5.0, 5.0, 5.0, 5.0, 5.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                      2.0, 2.0, 2.0, 2.0, 2.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	COMPLEX8 cea[16]={ 
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		} 
	};
	COMPLEX8 ceb[16]={ 
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		} 
	};
	COMPLEX8 cec[10][10];
	COMPLEX8 ced[10][10];
	COMPLEX16 cda[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	COMPLEX16 cdb[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 cdc[10][10];
	COMPLEX16 cdd[10][10];
	COMPLEX32 cqa[16]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX32 cqc[10][10];
	unsigned char lba[21]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		                         0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 	};
	unsigned long int l4t=1;
	unsigned long int l4a[16]={ 
		1, 1, 1, 1, 1, 1, 1, 1,
		                             0, 0, 0, 0, 0, 1, 1, 1 	};
	unsigned long int l4b[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 1, 1 	};
	unsigned long int l4c[10][10],l4d[10][10];
	long int id[10][10];
	float RMIN=0.;
	float RMAX=0.;
	float RSUM=0.;
	float RSM=0.;
	long int JMAX=0;
	long int JMIN=0;
	long int I1,I2;
	long int I,J,K,i,j,k,CTR,NCWNR=8,CWNR=8;
	float DIF=0.,DF=0.;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
				rd[i][j]=1.0;
				dc[i][j]=1.0;
				qc[i][j]=2.0;
				cec[i][j].real=1.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=1.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=0.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=0.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=0.0;
				cqc[i][j].qimag=1.0;
			}
			else
			{
				rd[i][j]=2.0;
				dc[i][j]=2.0;
				qc[i][j]=1.0;
				cec[i][j].real=0.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=0.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=2.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=2.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=2.0;
				cqc[i][j].qimag=1.0;
			}
			CTR++;
		}
	}
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<10)
			{
				l4c[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RMIN=10000.0;
	RMAX=0.0;
	for(I1=-5;I1<=10;I1+=2)
	{
		DIF=RMIN-RA(I1);
		if (RA(I1) >= 1.0 || RA(I1) <= 0.0)
		{
			RB(I1)=0.0;
			CEA(I1).real=RB(I1)+CEB(I1).real-CEB(I1).imag*2.0;
			CEA(I1).imag=RA(I1)+CEB(I1).real*2.0+CEB(I1).imag;
			CDA(I1).dreal=  CEA(I1).real*CDA(I1).dreal
			    - CEA(I1).imag*CDA(I1).dimag;
			CDA(I1).dimag=  CEA(I1).real*CDA(I1).dimag
			    - CEA(I1).imag*CDA(I1).dreal;
			CQA(I1).qreal=CDA(I1).dreal+CQA(I1).qreal+CEA(I1).real;
			CQA(I1).qimag=CDA(I1).dimag+CQA(I1).qimag+CEA(I1).imag;
		}
		else
		{
			RSUM=RSUM+RB(I1);
			DF=RMAX-RC(I1);
			if (DF<=0) goto LBL_102;
LBL_101:
			;
			RMAX=RC(I1);
			JMAX=I1;
LBL_102:
			;
		}
		if (DIF<=0) goto LBL_104;
LBL_103:
		;
		RMIN=RA(I1);
		JMIN=I1;
LBL_104:
		;
		if (L4A(I1)==1)
		{
			RSM=0.0;
			for(I2=10;I2>=-5;I2-=2)
			{
				if (L4A(I1)==1)
				{
					CEB(I1).real=RA(I1)+RB(I1)*DA(I1);
					CEB(I1).imag=RB(I1)*DB(I2);
					CDB(I1).dreal=0.;
					CDB(I1).dimag=CEB(I1).imag;
					RSM=RSM+fabs(CDB(I1).dreal);
				}
LBL_12:
				;
			}
			printf("** **CMEX**(ROOP) **\n");
			printf(" RSM = %g\n",RSM);
			printf("\n");
			CTR=0;
			printf(" CEB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CEB(I).real,CEB(I).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
			CTR=0;
			printf(" CDB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CDB(I).dreal,CDB(I).dimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
		}
LBL_11:
		;
	}
	printf("****CMEX**\n");
	printf(" RMIN = %g\n",RMIN);
	printf(" JMIN = %ld\n",JMIN);
	printf(" RMAX = %g\n",RMAX);
	printf(" JMAX = %ld\n",JMAX);
	CTR=0;
	printf(" RB =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CDA(I).dreal,CDA(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",(double)CQA(I).qreal,(double)CQA(I).qimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	return 0;
}
int OPSEL()
{
	float ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                1.0, 1.0, 1.0, 1.0, 1.0,
		                2.0, 2.0, 2.0, 2.0, 2.0,
		                2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                3.0, 3.0, 3.0, 3.0, 3.0,
		                0.0, 0.0, 0.0, 0.0, 0.0,
		                0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                1.0, 1.0, 1.0, 1.0, 1.0 	};
	float rd[10][10];
	double dc[10][10];
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                 5.0, 5.0, 5.0, 5.0, 5.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0,
		                 3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0,
		                 2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                      2.0, 2.0, 2.0, 2.0, 2.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0,
		                      1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	COMPLEX8 cea[16]={ 
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		} 
	};
	COMPLEX8 ceb[16]={ 
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		},
		{ 
			1.0, 1.0 		} 
	};
	COMPLEX8 cec[10][10];
	COMPLEX8 ced[10][10];
	COMPLEX16 cda[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	COMPLEX16 cdb[21]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX16 cdc[10][10];
	COMPLEX16 cdd[10][10];
	COMPLEX32 cqa[16]={ 
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			0.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		},
		{ 
			2.0, 1.0 		} 
	};
	COMPLEX32 cqc[10][10];
	unsigned char lba[21]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		                         0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 	};
	unsigned long int l4t=1;
	unsigned long int l4a[16]={ 
		1, 1, 1, 1, 1, 1, 1, 1,
		                             0, 0, 0, 0, 0, 1, 1, 1 	};
	unsigned long int l4b[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 1, 1 	};
	unsigned long int l4c[10][10],l4d[10][10];
	long int id[10][10];
	float RMIN=0.;
	float RMAX=0.;
	float RSUM=0.;
	float RSM=0.;
	long int JMAX=0;
	long int JMIN=0;
	long int I1,I2;
	long int I,J,K,i,j,k,CTR,NCWNR=8,CWNR=8;
	float DIF=0.,DF=0.;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
				rd[i][j]=1.0;
				dc[i][j]=1.0;
				qc[i][j]=2.0;
				cec[i][j].real=1.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=1.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=0.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=0.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=0.0;
				cqc[i][j].qimag=1.0;
			}
			else
			{
				rd[i][j]=2.0;
				dc[i][j]=2.0;
				qc[i][j]=1.0;
				cec[i][j].real=0.0;
				cec[i][j].imag=1.0;
				ced[i][j].real=0.0;
				ced[i][j].imag=1.0;
				cdc[i][j].dreal=2.0;
				cdc[i][j].dimag=1.0;
				cdd[i][j].dreal=2.0;
				cdd[i][j].dimag=1.0;
				cqc[i][j].qreal=2.0;
				cqc[i][j].qimag=1.0;
			}
			CTR++;
		}
	}
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<10)
			{
				l4c[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RMIN=10000.0;
	RMAX=0.0;
	for(I1=-5;I1<=10;I1+=2)
	{
		DIF=RMIN-RA(I1);
		if (RA(I1) >= 1.0 || RA(I1) <= 0.0)
		{
			RB(I1)=0.0;
			CEA(I1).real=RB(I1)+CEB(I1).real-CEB(I1).imag*2.0;
			CEA(I1).imag=RA(I1)+CEB(I1).real*2.0+CEB(I1).imag;
			CDA(I1).dreal=  CEA(I1).real*CDA(I1).dreal
			    - CEA(I1).imag*CDA(I1).dimag;
			CDA(I1).dimag=  CEA(I1).real*CDA(I1).dimag
			    - CEA(I1).imag*CDA(I1).dreal;
			CQA(I1).qreal=CDA(I1).dreal+CQA(I1).qreal+CEA(I1).real;
			CQA(I1).qimag=CDA(I1).dimag+CQA(I1).qimag+CEA(I1).imag;
		}
		else
		{
			RSUM=RSUM+RB(I1);
			DF=RMAX-RC(I1);
			if (DF<=0) goto LBL_102;
LBL_101:
			;
			RMAX=RC(I1);
			JMAX=I1;
LBL_102:
			;
		}
		if (DIF<=0) goto LBL_104;
LBL_103:
		;
		RMIN=RA(I1);
		JMIN=I1;
LBL_104:
		;
		if (L4A(I1)==1)
		{
			RSM=0.0;
			for(I2=10;I2>=-5;I2-=2)
			{
				if (L4A(I1)==1)
				{
					CEB(I1).real=RA(I1)+RB(I1)*DA(I1);
					CEB(I1).imag=RB(I1)*DB(I2);
					CDB(I1).dreal=0.;
					CDB(I1).dimag=CEB(I1).imag;
					RSM=RSM+fabs(CDB(I1).dreal);
				}
LBL_12:
				;
			}
			printf("** **OPSEL**(ROOP) **\n");
			printf(" RSM = %g\n",RSM);
			printf("\n");
			CTR=0;
			printf(" CEB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CEB(I).real,CEB(I).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
			CTR=0;
			printf(" CDB =");
			for(I=-5;I<=10;I++){
				printf(" (%g,%g)",CDB(I).dreal,CDB(I).dimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("      ");
				}
			}
			printf("\n");
		}
LBL_11:
		;
	}
	printf("****OPSEL**\n");
	printf(" RMIN = %g\n",RMIN);
	printf(" JMIN = %ld\n",JMIN);
	printf(" RMAX = %g\n",RMAX);
	printf(" JMAX = %ld\n",JMAX);
	CTR=0;
	printf(" RB =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CDA(I).dreal,CDA(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQA =");
	for(I=-5;I<=10;I++){
		printf(" (%g,%g)",(double)CQA(I).qreal,(double)CQA(I).qimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	return 0;
}

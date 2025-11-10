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
	printf(" ****\n");
	MASK();
	LIST();
	CMEX();
	OPSEL();
	exit (0);
}
#define RA(i) ra[i-1+6]
#define RB(i) rb[i-1+6]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define DC(i,j) dc[i-1][j-1]
#define DA(i) da[i-1+6]
#define DB(i) db[i-1+6]
#define QA(i) qa[i-1+6]
#define QC(i,j) qc[i-1][j-1]
#define I4A(i) i4a[i-1]
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
#define LBB(i) lbb[i-1+6]
#define L4A(i) l4a[i-1+6]
#define L4B(i) l4b[i-1]
#define L4C(i,j) l4c[i-1][j-1]
#define L4D(i,j) l4d[i-1][j-1]
#define ID(i,j) id[i-1][j-1]
int MASK()
{
	float  ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float  rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float  rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0 	};
	float  rd[10]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0 	};
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                   5.0, 5.0, 5.0, 5.0, 5.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	double dc[10][10];
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                        2.0, 2.0, 2.0, 2.0, 2.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	long int i4a[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
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
	COMPLEX16  cda[21]={ 
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
	COMPLEX16 CET;
	COMPLEX16  cdb[21]={ 
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
	COMPLEX32  cqa[16]={ 
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
	unsigned char lbb[21]={ 
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
	float    RMIN=0.;
	float    RMAX=0.;
	float    RSUM=0.;
	float    RSM=0.;
	float    RSUM1;
	long int JMAX=0;
	long int JMIN=0;
	long int CTR,NCWNR=8,CWNR=8,I,J,K,I1,i,j,k;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
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
				l4d[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
				l4d[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
				l4d[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RSUM1=0.0;
	RSUM=0.0;
	for(I1=1;I1<=10;I1++)
	{
		L4A(I1)=RA(I1) > RB(I1) || RA(I1) == 1.0;
		L4B(I1)=L4A(I1) ^ L4B(I1);
		LBB(I1)=!L4A(I1) || L4B(I1);
		if (L4A(I1) || L4B(I1) == 1)
		{
			RSUM=RSUM+RA(I1)+DA(I1)+(float)(I1);
			QA(I1)=RA(I1)+exp(QA(I1));
			DA(I1)=sqrt(DA(I1))+sqrt(DA(I1));
			CEA(I1).real=DA(I1)+sqrt(CEA(I1).real);
			CEA(I1).imag=QA(I1)+sqrt(CEA(I1).imag);
			CEB(I1).real=log(CEB(I1).real+CEA(I1).real);
			CEB(I1).imag=log(CEB(I1).imag+CEA(I1).imag);
			CQA(I1).qreal=  CEA(I1).real*CQA(I1).qreal
			    - CEA(I1).imag*CQA(I1).qimag;
			CQA(I1).qimag=  CEA(I1).real*CQA(I1).qimag
			    + CEA(I1).imag*CQA(I1).qreal;
			I4A(I1)=I4A(I1)*(int)(CEA(I1).real)+I1;
		}
		else
		{
			CEA(I1).real=0.0;
			CEA(I1).imag=0.0;
			CEB(I1).real=0.0;
			CEB(I1).imag=0.0;
			QA(I1)=-100.;
			RSUM1=RSUM1+DA(I1)*(float)(I4A(I1));
			DA(I1)=0.0;
			CQA(I1).qreal=0.0;
			CQA(I1).qimag=0.0;
			I4A(I1)=0;
		}
		if (fabs(CEA(I1).real) == 0.0)
		{
			RC(I1)=tanh(RA(I1));
		}
		RD(I1)=tanh((float)(RA(I1)+RB(I1)+CEA(I1).real));
LBL_11:
		;
	}
	printf(" ****MASK**\n");
	CTR=0;
	printf(" L4A =");
	for(I=-5;I<=10;I++){
		printf(" %lu",L4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4B =");
	for(I=1;I<=10;I++){
		printf(" %lu",L4B(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBB =");
	for(I=-5;I<=15;I++){
		printf(" %u",LBB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" RSUM = %g\n",RSUM);
	printf(" RSUM1 = %g\n",RSUM1);
	CTR=0;
	printf(" RA =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
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
	printf(" RC =");
	for(I=1;I<=10;I++){
		printf(" %g",RC(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DA =");
	for(I=-5;I<=15;I++){
		printf(" %g",DA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I4A =");
	for(I=1;I<=10;I++){
		printf(" %ld",I4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
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
	return 0;
}
int LIST()
{
	float  ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float  rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float  rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0 	};
	float  rd[10]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0 	};
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                   5.0, 5.0, 5.0, 5.0, 5.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	double dc[10][10];
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                        2.0, 2.0, 2.0, 2.0, 2.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	long int i4a[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
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
	COMPLEX16  cda[21]={ 
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
	COMPLEX16 CET;
	COMPLEX16  cdb[21]={ 
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
	COMPLEX32  cqa[16]={ 
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
	unsigned char lbb[21]={ 
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
	float    RMIN=0.;
	float    RMAX=0.;
	float    RSUM=0.;
	float    RSM=0.;
	float    RSUM1;
	long int JMAX=0;
	long int JMIN=0;
	long int CTR,NCWNR=8,CWNR=8,I,J,K,I1,i,j,k;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
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
				l4d[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
				l4d[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
				l4d[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RSUM1=0.0;
	RSUM=0.0;
	for(I1=1;I1<=10;I1++)
	{
		L4A(I1)=RA(I1) > RB(I1) || RA(I1) == 1.0;
		L4B(I1)=L4A(I1) ^ L4B(I1);
		LBB(I1)=!L4A(I1) || L4B(I1);
		if (L4A(I1) || L4B(I1) == 1)
		{
			RSUM=RSUM+RA(I1)+DA(I1)+(float)(I1);
			QA(I1)=RA(I1)+exp(QA(I1));
			DA(I1)=sqrt(DA(I1))+sqrt(DA(I1));
			CEA(I1).real=DA(I1)+sqrt(CEA(I1).real);
			CEA(I1).imag=QA(I1)+sqrt(CEA(I1).imag);
			CEB(I1).real=log(CEB(I1).real+CEA(I1).real);
			CEB(I1).imag=log(CEB(I1).imag+CEA(I1).imag);
			CQA(I1).qreal=  CEA(I1).real*CQA(I1).qreal
			    - CEA(I1).imag*CQA(I1).qimag;
			CQA(I1).qimag=  CEA(I1).real*CQA(I1).qimag
			    + CEA(I1).imag*CQA(I1).qreal;
			I4A(I1)=I4A(I1)*(int)(CEA(I1).real)+I1;
		}
		else
		{
			CEA(I1).real=0.0;
			CEA(I1).imag=0.0;
			CEB(I1).real=0.0;
			CEB(I1).imag=0.0;
			QA(I1)=-100.;
			RSUM1=RSUM1+DA(I1)*(float)(I4A(I1));
			DA(I1)=0.0;
			CQA(I1).qreal=0.0;
			CQA(I1).qimag=0.0;
			I4A(I1)=0;
		}
		if (fabs(CEA(I1).real) == 0.0)
		{
			RC(I1)=tanh(RA(I1));
		}
		RD(I1)=tanh((float)(RA(I1)+RB(I1)+CEA(I1).real));
LBL_11:
		;
	}
	printf(" ****LIST**\n");
	CTR=0;
	printf(" L4A =");
	for(I=-5;I<=10;I++){
		printf(" %lu",L4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4B =");
	for(I=1;I<=10;I++){
		printf(" %lu",L4B(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBB =");
	for(I=-5;I<=15;I++){
		printf(" %u",LBB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" RSUM = %g\n",RSUM);
	printf(" RSUM1 = %g\n",RSUM1);
	CTR=0;
	printf(" RA =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
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
	printf(" RC =");
	for(I=1;I<=10;I++){
		printf(" %g",RC(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DA =");
	for(I=-5;I<=15;I++){
		printf(" %g",DA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I4A =");
	for(I=1;I<=10;I++){
		printf(" %ld",I4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
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
	return 0;
}
int CMEX()
{
	float  ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float  rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float  rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0 	};
	float  rd[10]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0 	};
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                   5.0, 5.0, 5.0, 5.0, 5.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	double dc[10][10];
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                        2.0, 2.0, 2.0, 2.0, 2.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	long int i4a[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
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
	COMPLEX16  cda[21]={ 
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
	COMPLEX16 CET;
	COMPLEX16  cdb[21]={ 
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
	COMPLEX32  cqa[16]={ 
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
	unsigned char lbb[21]={ 
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
	float    RMIN=0.;
	float    RMAX=0.;
	float    RSUM=0.;
	float    RSM=0.;
	float    RSUM1;
	long int JMAX=0;
	long int JMIN=0;
	long int CTR,NCWNR=8,CWNR=8,I,J,K,I1,i,j,k;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
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
				l4d[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
				l4d[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
				l4d[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RSUM1=0.0;
	RSUM=0.0;
	for(I1=1;I1<=10;I1++)
	{
		L4A(I1)=RA(I1) > RB(I1) || RA(I1) == 1.0;
		L4B(I1)=L4A(I1) ^ L4B(I1);
		LBB(I1)=!L4A(I1) || L4B(I1);
		if (L4A(I1) || L4B(I1) == 1)
		{
			RSUM=RSUM+RA(I1)+DA(I1)+(float)(I1);
			QA(I1)=RA(I1)+exp(QA(I1));
			DA(I1)=sqrt(DA(I1))+sqrt(DA(I1));
			CEA(I1).real=DA(I1)+sqrt(CEA(I1).real);
			CEA(I1).imag=QA(I1)+sqrt(CEA(I1).imag);
			CEB(I1).real=log(CEB(I1).real+CEA(I1).real);
			CEB(I1).imag=log(CEB(I1).imag+CEA(I1).imag);
			CQA(I1).qreal=  CEA(I1).real*CQA(I1).qreal
			    - CEA(I1).imag*CQA(I1).qimag;
			CQA(I1).qimag=  CEA(I1).real*CQA(I1).qimag
			    + CEA(I1).imag*CQA(I1).qreal;
			I4A(I1)=I4A(I1)*(int)(CEA(I1).real)+I1;
		}
		else
		{
			CEA(I1).real=0.0;
			CEA(I1).imag=0.0;
			CEB(I1).real=0.0;
			CEB(I1).imag=0.0;
			QA(I1)=-100.;
			RSUM1=RSUM1+DA(I1)*(float)(I4A(I1));
			DA(I1)=0.0;
			CQA(I1).qreal=0.0;
			CQA(I1).qimag=0.0;
			I4A(I1)=0;
		}
		if (fabs(CEA(I1).real) == 0.0)
		{
			RC(I1)=tanh(RA(I1));
		}
		RD(I1)=tanh((float)(RA(I1)+RB(I1)+CEA(I1).real));
LBL_11:
		;
	}
	printf(" ****CMEX**\n");
	CTR=0;
	printf(" L4A =");
	for(I=-5;I<=10;I++){
		printf(" %lu",L4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4B =");
	for(I=1;I<=10;I++){
		printf(" %lu",L4B(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBB =");
	for(I=-5;I<=15;I++){
		printf(" %u",LBB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" RSUM = %g\n",RSUM);
	printf(" RSUM1 = %g\n",RSUM1);
	CTR=0;
	printf(" RA =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
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
	printf(" RC =");
	for(I=1;I<=10;I++){
		printf(" %g",RC(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DA =");
	for(I=-5;I<=15;I++){
		printf(" %g",DA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I4A =");
	for(I=1;I<=10;I++){
		printf(" %ld",I4A(I));
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
	return 0;
}
int OPSEL()
{
	float  ra[21]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	float  rb[21]={ 
		3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0,
		                   0.0, 0.0, 0.0, 0.0, 0.0, 0.0 	};
	float  rc[10]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   1.0, 1.0, 1.0, 1.0, 1.0 	};
	float  rd[10]={ 
		1.0, 1.0, 1.0, 1.0, 1.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0 	};
	double da[21]={ 
		5.0, 5.0, 5.0, 5.0, 5.0,
		                   5.0, 5.0, 5.0, 5.0, 5.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0,
		                   3.0, 3.0, 3.0, 3.0, 3.0, 3.0 	};
	double db[16]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0,
		                   2.0, 2.0, 2.0, 2.0, 2.0, 2.0 	};
	double dc[10][10];
	long double qa[21]={ 
		2.0, 2.0, 2.0, 2.0, 2.0,
		                        2.0, 2.0, 2.0, 2.0, 2.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0,
		                        1.0, 1.0, 1.0, 1.0, 1.0, 1.0 	};
	long double qc[10][10];
	long int i4a[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
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
	COMPLEX16  cda[21]={ 
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
	COMPLEX16 CET;
	COMPLEX16  cdb[21]={ 
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
	COMPLEX32  cqa[16]={ 
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
	unsigned char lbb[21]={ 
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
	float    RMIN=0.;
	float    RMAX=0.;
	float    RSUM=0.;
	float    RSM=0.;
	float    RSUM1;
	long int JMAX=0;
	long int JMIN=0;
	long int CTR,NCWNR=8,CWNR=8,I,J,K,I1,i,j,k;
	CTR=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			if (CTR<50)
			{
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
				l4d[i][j]=1;
			}
			else if (CTR<50)
			{
				l4c[i][j]=0;
				l4d[i][j]=0;
			}
			else if (CTR<100)
			{
				l4c[i][j]=1;
				l4d[i][j]=1;
			}
			CTR++;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			id[i][j]=0;
		}
	}
	RSUM1=0.0;
	RSUM=0.0;
	for(I1=1;I1<=10;I1++)
	{
		L4A(I1)=RA(I1) > RB(I1) || RA(I1) == 1.0;
		L4B(I1)=L4A(I1) ^ L4B(I1);
		LBB(I1)=!L4A(I1) || L4B(I1);
		if (L4A(I1) || L4B(I1) == 1)
		{
			RSUM=RSUM+RA(I1)+DA(I1)+(float)(I1);
			QA(I1)=RA(I1)+exp(QA(I1));
			DA(I1)=sqrt(DA(I1))+sqrt(DA(I1));
			CEA(I1).real=DA(I1)+sqrt(CEA(I1).real);
			CEA(I1).imag=QA(I1)+sqrt(CEA(I1).imag);
			CEB(I1).real=log(CEB(I1).real+CEA(I1).real);
			CEB(I1).imag=log(CEB(I1).imag+CEA(I1).imag);
			CQA(I1).qreal=  CEA(I1).real*CQA(I1).qreal
			    - CEA(I1).imag*CQA(I1).qimag;
			CQA(I1).qimag=  CEA(I1).real*CQA(I1).qimag
			    + CEA(I1).imag*CQA(I1).qreal;
			I4A(I1)=I4A(I1)*(int)(CEA(I1).real)+I1;
		}
		else
		{
			CEA(I1).real=0.0;
			CEA(I1).imag=0.0;
			CEB(I1).real=0.0;
			CEB(I1).imag=0.0;
			QA(I1)=-100.;
			RSUM1=RSUM1+DA(I1)*(float)(I4A(I1));
			DA(I1)=0.0;
			CQA(I1).qreal=0.0;
			CQA(I1).qimag=0.0;
			I4A(I1)=0;
		}
		if (fabs(CEA(I1).real) == 0.0)
		{
			RC(I1)=tanh(RA(I1));
		}
		RD(I1)=tanh((float)(RA(I1)+RB(I1)+CEA(I1).real));
LBL_11:
		;
	}
	printf(" ****OPSEL**\n");
	CTR=0;
	printf(" L4A =");
	for(I=-5;I<=10;I++){
		printf(" %lu",L4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4B =");
	for(I=1;I<=10;I++){
		printf(" %lu",L4B(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBB =");
	for(I=-5;I<=15;I++){
		printf(" %u",LBB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" RSUM = %g\n",RSUM);
	printf(" RSUM1 = %g\n",RSUM1);
	CTR=0;
	printf(" RA =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
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
	printf(" RC =");
	for(I=1;I<=10;I++){
		printf(" %g",RC(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DA =");
	for(I=-5;I<=15;I++){
		printf(" %g",DA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I4A =");
	for(I=1;I<=10;I++){
		printf(" %ld",I4A(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
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
	return 0;
}

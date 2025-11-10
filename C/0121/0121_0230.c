#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
long int NCWNR=7,CWNR=7,CTR,I,J;
int OPSEL();
int CMEX();
int LIST();
int MASK();
int main()
{
	printf(" ***  *** \n");
	MASK();
	LIST();
	CMEX();
	OPSEL();
	exit (0);
}
#define RA(i) ra[6+i-1]
#define RB(i) rb[6+i-1]
#define RC(i,j) rc[i-1][j-1]
#define RD(i,j) rd[i-1][j-1]
#define DC(i,j) dc[i-1][j-1]
#define DA(i) da[6+i-1]
#define DB(i) db[i-1]
#define QA(i) qa[6+i-1]
#define QC(i,j) qc[i-1][j-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CEC(i,j) cec[i-1][j-1]
#define CED(i,j) ced[i-1][j-1]
#define CDB(i) cdb[6+i-1]
#define CDC(i,j) cdc[i-1][j-1]
#define CDD(i,j) cdd[i-1][j-1]
#define CQC(i,j) cqc[i-1][j-1]
#define LBA(i) lba[6+i-1]
#define L4A(i) l4a[i-1]
#define L4B(i,j) l4b[i-1][j-1]
#define L4C(i,j) l4c[i-1][j-1]
#define L4D(i,j) l4d[i-1][j-1]
#define ID(i,j) id[i-1][j-1]
#define    TRUE    1
#define    FALSE   0
int MASK()
{
	static float ra[6+15]   =   {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                              2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float rb[6+15]   =   {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                              0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float  rc[10][10], *p_rc ;
	float  rd[10][10], *p_rd ;
	double dc[10][10], *p_dc ;
	static double da[6+15]  =   {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                              3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static double db[10]    =   {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static long double qa[6+15]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                              1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	long double qc[10][10], *p_qc ;
	static COMPLEX8 cea[10] =  {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.}	};
	static COMPLEX8 ceb[10] =  {
		{2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	COMPLEX8 cec[10][10], *p_cec ;
	COMPLEX8 ced[10][10], *p_ced ;
	static COMPLEX16 cdb[6+15]={
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.}	};
	COMPLEX16 CET;
	COMPLEX16 cdc[10][10], *p_cdc ;
	COMPLEX16 cdd[10][10], *p_cdd ;
	COMPLEX32 cqc[10][10], *p_cqc ;
	static  unsigned char lba[6+15] =
	{
		TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE	};
	static  unsigned long int L4T   =  {
		TRUE	};
	static  unsigned long int l4a[10]=
	{
		TRUE,  TRUE,  TRUE,  FALSE, FALSE,
		                              FALSE, FALSE, FALSE, TRUE,  TRUE	};
	unsigned long int l4b[10][10], *p_l4b ;
	unsigned long int l4c[10][10], *p_l4c ;
	unsigned long int l4d[10][10], *p_l4d ;
	long int id[10][10], *p_id ;
	float    RMIN, RMAX, RSUM,  RT ;
	long int I2, I1, i ;
	p_rc = &(rc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rc+i)   = 2.0 ;
		*(p_rc+50+i)= 1.0 ;
	}
	p_rd = &(rd[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rd+i)   = 1.0 ;
		*(p_rd+50+i)= 2.0 ;
	}
	p_dc = &(dc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_dc+i)   = 1.0 ;
		*(p_dc+50+i)= 2.0 ;
	}
	p_qc = &(qc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_qc+i)   = 2.0 ;
		*(p_qc+50+i)= 1.0 ;
	}
	p_cec = &(cec[0][0]) ;
	for(i=0; i<50; i++){
		(p_cec+i)->real   = 1.0 ;
		(p_cec+i)->imag   = 1.0 ;
		(p_cec+50+i)->real= 0.0 ;
		(p_cec+50+i)->imag= 1.0 ;
	}
	p_ced = &(ced[0][0]) ;
	for(i=0; i<50; i++){
		(p_ced+i)->real   = 1.0 ;
		(p_ced+i)->imag   = 1.0 ;
		(p_ced+50+i)->real= 0.0 ;
		(p_ced+50+i)->imag= 1.0 ;
	}
	p_cdc = &(cdc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdc+i)->dreal   = 0.0 ;
		(p_cdc+i)->dimag   = 1.0 ;
		(p_cdc+50+i)->dreal= 2.0 ;
		(p_cdc+50+i)->dimag= 1.0 ;
	}
	p_cdd = &(cdd[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdd+i)->dreal   = 0.0 ;
		(p_cdd+i)->dimag   = 1.0 ;
		(p_cdd+50+i)->dreal= 2.0 ;
		(p_cdd+50+i)->dimag= 1.0 ;
	}
	p_cqc = &(cqc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cqc+i)->qreal   = 0.0 ;
		(p_cqc+i)->qimag   = 1.0 ;
		(p_cqc+50+i)->qreal= 2.0 ;
		(p_cqc+50+i)->qimag= 1.0 ;
	}
	p_l4b = &(l4b[0][0]) ;
	for(i=0; i<50; i++)
	{ 
		*(p_l4b+i)       = TRUE ; 
	}
	for(i=0; i<30; i++)
	{ 
		*(p_l4b+50+i)    = FALSE; 
	}
	for(i=0; i<20; i++){
		*(p_l4b+50+30+i) = TRUE ;
	}
	p_l4c = &(l4c[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4c+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4c+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4c+10+40+i) = TRUE ;
	}
	p_l4d = &(l4d[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4d+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4d+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4d+10+40+i) = TRUE ;
	}
	p_id = &(id[0][0]) ;
	for(i=0; i<100; i++){
		*(p_id+i) = 0 ;
	}
	RT=0.0;
	RMIN = 0.0 ;
	RMAX = 0.0 ;
	RSUM = 0.0 ;
	for(I1=1;I1<=10;I1++)
	{
		for(I2=1;I2<=10;I2++)
		{
			if (L4A(I1) || L4B(I2,I1) != L4C(I2,I1))
			{
				if ((RA(I1)-RB(I2)) >= 0.)
				{
					CEC(I2,I1).real = RA(I1) + RA(I1) ;
					CEC(I2,I1).imag = RB(I1) + RA(I1) ;
					CDC(I2,I1).dreal= DA(I1) + RB(I2) ;
					CDC(I2,I1).dimag= DB(I1) + RB(I2) ;
					RC(I2,I1)= CEC(I2,I1).real + RA(I1) + RB(I2) ;
					DC(I2,I1)= CDC(I2,I1).dreal+ DA(I1) + DB(I2) ;
					QC(I2,I1)= RC(I2,I1) + DC(I2,I1);
					CQC(I2,I1).qreal= CDC(I2,I1).dreal + RC(I2,I1) ;
					CQC(I2,I1).qimag= CDC(I2,I1).dimag + RC(I2,I1) ;
					RT= RC(I2,I1) + DC(I2,I1);
				}
				RA(I1)= RC(I2,I1)*1.0 + DC(I2,I1)*RA(I1);
				CED(I1,I2).real= (CEC(I2,I1).real * CEA(I1).real) -
				    (CEC(I2,I1).imag * CEA(I1).imag) +
				    CEB(I2).real ;
				CED(I1,I2).imag= (CEC(I2,I1).real * CEA(I1).imag) +
				    (CEC(I2,I1).imag * CEA(I1).real) +
				    CEB(I2).imag ;
				CDD(I2,I1).dreal= CED(I1,I2).real + RA(I1) +  0.0*RB(I2);
				CDD(I2,I1).dimag= CED(I1,I2).imag + RA(I1) +  1.0*RB(I2);
			}
			if (fabs(CED(I1,I2).real) >  5.0)
			{
				L4C(I2,I1)= FALSE ;
				CED(I1,I2).real= 0.0 ;
			}
			RC(I2,I1)=RC(I2,I1)+RA(I1)+RT;
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf("****MASK**\n");
	CTR=0;
	printf(" CEC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cec+I)->real,(p_cec+I)->imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cdc+I)->dreal,(p_cdc+I)->dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",RC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" QC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",(double)QC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQC =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",(double)CQC(I,J).qreal,(double)CQC(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" RA  =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CDD(I,J).dreal,CDD(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4C =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %ld",L4C(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CED =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CED(I,J).real,CED(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	return 0;
}
int LIST()
{
	static float ra[6+15]   =   {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                              2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float rb[6+15]   =   {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                              0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float  rc[10][10], *p_rc ;
	float  rd[10][10], *p_rd ;
	double dc[10][10], *p_dc ;
	static double da[6+15]  =   {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                              3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static double db[10]    =   {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static long double qa[6+15]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                              1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	long double qc[10][10], *p_qc ;
	static COMPLEX8 cea[10] =  {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.}	};
	static COMPLEX8 ceb[10] =  {
		{2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	COMPLEX8 cec[10][10], *p_cec ;
	COMPLEX8 ced[10][10], *p_ced ;
	static COMPLEX16 cdb[6+15]={
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.}	};
	COMPLEX16 CET;
	COMPLEX16 cdc[10][10], *p_cdc ;
	COMPLEX16 cdd[10][10], *p_cdd ;
	COMPLEX32 cqc[10][10], *p_cqc ;
	static  unsigned char lba[6+15] =
	{
		TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE	};
	static  unsigned long int L4T   =  {
		TRUE	};
	static  unsigned long int l4a[10]=
	{
		TRUE,  TRUE,  TRUE,  FALSE, FALSE,
		                              FALSE, FALSE, FALSE, TRUE,  TRUE	};
	unsigned long int l4b[10][10], *p_l4b ;
	unsigned long int l4c[10][10], *p_l4c ;
	unsigned long int l4d[10][10], *p_l4d ;
	long int id[10][10], *p_id ;
	float    RMIN, RMAX, RSUM,  RT ;
	long int I2, I1, i ;
	p_rc = &(rc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rc+i)   = 2.0 ;
		*(p_rc+50+i)= 1.0 ;
	}
	p_rd = &(rd[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rd+i)   = 1.0 ;
		*(p_rd+50+i)= 2.0 ;
	}
	p_dc = &(dc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_dc+i)   = 1.0 ;
		*(p_dc+50+i)= 2.0 ;
	}
	p_qc = &(qc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_qc+i)   = 2.0 ;
		*(p_qc+50+i)= 1.0 ;
	}
	p_cec = &(cec[0][0]) ;
	for(i=0; i<50; i++){
		(p_cec+i)->real   = 1.0 ;
		(p_cec+i)->imag   = 1.0 ;
		(p_cec+50+i)->real= 0.0 ;
		(p_cec+50+i)->imag= 1.0 ;
	}
	p_ced = &(ced[0][0]) ;
	for(i=0; i<50; i++){
		(p_ced+i)->real   = 1.0 ;
		(p_ced+i)->imag   = 1.0 ;
		(p_ced+50+i)->real= 0.0 ;
		(p_ced+50+i)->imag= 1.0 ;
	}
	p_cdc = &(cdc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdc+i)->dreal   = 0.0 ;
		(p_cdc+i)->dimag   = 1.0 ;
		(p_cdc+50+i)->dreal= 2.0 ;
		(p_cdc+50+i)->dimag= 1.0 ;
	}
	p_cdd = &(cdd[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdd+i)->dreal   = 0.0 ;
		(p_cdd+i)->dimag   = 1.0 ;
		(p_cdd+50+i)->dreal= 2.0 ;
		(p_cdd+50+i)->dimag= 1.0 ;
	}
	p_cqc = &(cqc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cqc+i)->qreal   = 0.0 ;
		(p_cqc+i)->qimag   = 1.0 ;
		(p_cqc+50+i)->qreal= 2.0 ;
		(p_cqc+50+i)->qimag= 1.0 ;
	}
	p_l4b = &(l4b[0][0]) ;
	for(i=0; i<50; i++)
	{ 
		*(p_l4b+i)       = TRUE ; 
	}
	for(i=0; i<30; i++)
	{ 
		*(p_l4b+50+i)    = FALSE; 
	}
	for(i=0; i<20; i++){
		*(p_l4b+50+30+i) = TRUE ;
	}
	p_l4c = &(l4c[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4c+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4c+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4c+10+40+i) = TRUE ;
	}
	p_l4d = &(l4d[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4d+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4d+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4d+10+40+i) = TRUE ;
	}
	p_id = &(id[0][0]) ;
	for(i=0; i<100; i++){
		*(p_id+i) = 0 ;
	}
	RT=0.0;
	RMIN = 0.0 ;
	RMAX = 0.0 ;
	RSUM = 0.0 ;
	for(I1=1;I1<=10;I1++)
	{
		for(I2=1;I2<=10;I2++)
		{
			if (L4A(I1) || L4B(I2,I1) != L4C(I2,I1))
			{
				if ((RA(I1)-RB(I2)) >= 0.)
				{
					CEC(I2,I1).real = RA(I1) + RA(I1) ;
					CEC(I2,I1).imag = RB(I1) + RA(I1) ;
					CDC(I2,I1).dreal= DA(I1) + RB(I2) ;
					CDC(I2,I1).dimag= DB(I1) + RB(I2) ;
					RC(I2,I1)= CEC(I2,I1).real + RA(I1) + RB(I2) ;
					DC(I2,I1)= CDC(I2,I1).dreal+ DA(I1) + DB(I2) ;
					QC(I2,I1)= RC(I2,I1) + DC(I2,I1);
					CQC(I2,I1).qreal= CDC(I2,I1).dreal + RC(I2,I1) ;
					CQC(I2,I1).qimag= CDC(I2,I1).dimag + RC(I2,I1) ;
					RT= RC(I2,I1) + DC(I2,I1);
				}
				RA(I1)= RC(I2,I1)*1.0 + DC(I2,I1)*RA(I1);
				CED(I1,I2).real= (CEC(I2,I1).real * CEA(I1).real) -
				    (CEC(I2,I1).imag * CEA(I1).imag) +
				    CEB(I2).real ;
				CED(I1,I2).imag= (CEC(I2,I1).real * CEA(I1).imag) +
				    (CEC(I2,I1).imag * CEA(I1).real) +
				    CEB(I2).imag ;
				CDD(I2,I1).dreal= CED(I1,I2).real + RA(I1) +  0.0*RB(I2);
				CDD(I2,I1).dimag= CED(I1,I2).imag + RA(I1) +  1.0*RB(I2);
			}
			if (fabs(CED(I1,I2).real) >  5.0)
			{
				L4C(I2,I1)= FALSE ;
				CED(I1,I2).real= 0.0 ;
			}
			RC(I2,I1)=RC(I2,I1)+RA(I1)+RT;
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf("****LIST**\n");
	CTR=0;
	printf(" CEC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cec+I)->real,(p_cec+I)->imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cdc+I)->dreal,(p_cdc+I)->dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",RC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" QC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",(double)QC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQC =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",(double)CQC(I,J).qreal,(double)CQC(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" RA  =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CDD(I,J).dreal,CDD(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4C =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %ld",L4C(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CED =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CED(I,J).real,CED(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	return 0;
}
int CMEX()
{
	static float ra[6+15]   =   {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                              2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float rb[6+15]   =   {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                              0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float  rc[10][10], *p_rc ;
	float  rd[10][10], *p_rd ;
	double dc[10][10], *p_dc ;
	static double da[6+15]  =   {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                              3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static double db[10]    =   {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static long double qa[6+15]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                              1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	long double qc[10][10], *p_qc ;
	static COMPLEX8 cea[10] =  {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.}	};
	static COMPLEX8 ceb[10] =  {
		{2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	COMPLEX8 cec[10][10], *p_cec ;
	COMPLEX8 ced[10][10], *p_ced ;
	static COMPLEX16 cdb[6+15]={
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.}	};
	COMPLEX16 CET;
	COMPLEX16 cdc[10][10], *p_cdc ;
	COMPLEX16 cdd[10][10], *p_cdd ;
	COMPLEX32 cqc[10][10], *p_cqc ;
	static  unsigned char lba[6+15] =
	{
		TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE	};
	static  unsigned long int L4T   =  {
		TRUE	};
	static  unsigned long int l4a[10]=
	{
		TRUE,  TRUE,  TRUE,  FALSE, FALSE,
		                              FALSE, FALSE, FALSE, TRUE,  TRUE	};
	unsigned long int l4b[10][10], *p_l4b ;
	unsigned long int l4c[10][10], *p_l4c ;
	unsigned long int l4d[10][10], *p_l4d ;
	long int id[10][10], *p_id ;
	float    RMIN, RMAX, RSUM,  RT ;
	long int I2, I1, i ;
	p_rc = &(rc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rc+i)   = 2.0 ;
		*(p_rc+50+i)= 1.0 ;
	}
	p_rd = &(rd[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rd+i)   = 1.0 ;
		*(p_rd+50+i)= 2.0 ;
	}
	p_dc = &(dc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_dc+i)   = 1.0 ;
		*(p_dc+50+i)= 2.0 ;
	}
	p_qc = &(qc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_qc+i)   = 2.0 ;
		*(p_qc+50+i)= 1.0 ;
	}
	p_cec = &(cec[0][0]) ;
	for(i=0; i<50; i++){
		(p_cec+i)->real   = 1.0 ;
		(p_cec+i)->imag   = 1.0 ;
		(p_cec+50+i)->real= 0.0 ;
		(p_cec+50+i)->imag= 1.0 ;
	}
	p_ced = &(ced[0][0]) ;
	for(i=0; i<50; i++){
		(p_ced+i)->real   = 1.0 ;
		(p_ced+i)->imag   = 1.0 ;
		(p_ced+50+i)->real= 0.0 ;
		(p_ced+50+i)->imag= 1.0 ;
	}
	p_cdc = &(cdc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdc+i)->dreal   = 0.0 ;
		(p_cdc+i)->dimag   = 1.0 ;
		(p_cdc+50+i)->dreal= 2.0 ;
		(p_cdc+50+i)->dimag= 1.0 ;
	}
	p_cdd = &(cdd[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdd+i)->dreal   = 0.0 ;
		(p_cdd+i)->dimag   = 1.0 ;
		(p_cdd+50+i)->dreal= 2.0 ;
		(p_cdd+50+i)->dimag= 1.0 ;
	}
	p_cqc = &(cqc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cqc+i)->qreal   = 0.0 ;
		(p_cqc+i)->qimag   = 1.0 ;
		(p_cqc+50+i)->qreal= 2.0 ;
		(p_cqc+50+i)->qimag= 1.0 ;
	}
	p_l4b = &(l4b[0][0]) ;
	for(i=0; i<50; i++)
	{ 
		*(p_l4b+i)       = TRUE ; 
	}
	for(i=0; i<30; i++)
	{ 
		*(p_l4b+50+i)    = FALSE; 
	}
	for(i=0; i<20; i++){
		*(p_l4b+50+30+i) = TRUE ;
	}
	p_l4c = &(l4c[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4c+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4c+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4c+10+40+i) = TRUE ;
	}
	p_l4d = &(l4d[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4d+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4d+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4d+10+40+i) = TRUE ;
	}
	p_id = &(id[0][0]) ;
	for(i=0; i<100; i++){
		*(p_id+i) = 0 ;
	}
	RT=0.0;
	RMIN = 0.0 ;
	RMAX = 0.0 ;
	RSUM = 0.0 ;
	for(I1=1;I1<=10;I1++)
	{
		for(I2=1;I2<=10;I2++)
		{
			if (L4A(I1) || L4B(I2,I1) != L4C(I2,I1))
			{
				if ((RA(I1)-RB(I2)) >= 0.)
				{
					CEC(I2,I1).real = RA(I1) + RA(I1) ;
					CEC(I2,I1).imag = RB(I1) + RA(I1) ;
					CDC(I2,I1).dreal= DA(I1) + RB(I2) ;
					CDC(I2,I1).dimag= DB(I1) + RB(I2) ;
					RC(I2,I1)= CEC(I2,I1).real + RA(I1) + RB(I2) ;
					DC(I2,I1)= CDC(I2,I1).dreal+ DA(I1) + DB(I2) ;
					QC(I2,I1)= RC(I2,I1) + DC(I2,I1);
					CQC(I2,I1).qreal= CDC(I2,I1).dreal + RC(I2,I1) ;
					CQC(I2,I1).qimag= CDC(I2,I1).dimag + RC(I2,I1) ;
					RT= RC(I2,I1) + DC(I2,I1);
				}
				RA(I1)= RC(I2,I1)*1.0 + DC(I2,I1)*RA(I1);
				CED(I1,I2).real= (CEC(I2,I1).real * CEA(I1).real) -
				    (CEC(I2,I1).imag * CEA(I1).imag) +
				    CEB(I2).real ;
				CED(I1,I2).imag= (CEC(I2,I1).real * CEA(I1).imag) +
				    (CEC(I2,I1).imag * CEA(I1).real) +
				    CEB(I2).imag ;
				CDD(I2,I1).dreal= CED(I1,I2).real + RA(I1) +  0.0*RB(I2);
				CDD(I2,I1).dimag= CED(I1,I2).imag + RA(I1) +  1.0*RB(I2);
			}
			if (fabs(CED(I1,I2).real) >  5.0)
			{
				L4C(I2,I1)= FALSE ;
				CED(I1,I2).real= 0.0 ;
			}
			RC(I2,I1)=RC(I2,I1)+RA(I1)+RT;
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf("****CMEX**\n");
	CTR=0;
	printf(" CEC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cec+I)->real,(p_cec+I)->imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cdc+I)->dreal,(p_cdc+I)->dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",RC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" QC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",(double)QC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQC =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",(double)CQC(I,J).qreal,(double)CQC(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" RA  =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CDD(I,J).dreal,CDD(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4C =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %ld",L4C(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CED =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CED(I,J).real,CED(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	return 0;
}
int OPSEL()
{
	static float ra[6+15]   =   {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                              2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float rb[6+15]   =   {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                              0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float  rc[10][10], *p_rc ;
	float  rd[10][10], *p_rd ;
	double dc[10][10], *p_dc ;
	static double da[6+15]  =   {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                              3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static double db[10]    =   {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static long double qa[6+15]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                              1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	long double qc[10][10], *p_qc ;
	static COMPLEX8 cea[10] =  {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.}	};
	static COMPLEX8 ceb[10] =  {
		{2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	COMPLEX8 cec[10][10], *p_cec ;
	COMPLEX8 ced[10][10], *p_ced ;
	static COMPLEX16 cdb[6+15]={
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                             {2.,1.}	};
	COMPLEX16 CET;
	COMPLEX16 cdc[10][10], *p_cdc ;
	COMPLEX16 cdd[10][10], *p_cdd ;
	COMPLEX32 cqc[10][10], *p_cqc ;
	static  unsigned char lba[6+15] =
	{
		TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE,
		                              FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
		                              TRUE,  TRUE,  TRUE,  TRUE,  TRUE	};
	static  unsigned long int L4T   =  {
		TRUE	};
	static  unsigned long int l4a[10]=
	{
		TRUE,  TRUE,  TRUE,  FALSE, FALSE,
		                              FALSE, FALSE, FALSE, TRUE,  TRUE	};
	unsigned long int l4b[10][10], *p_l4b ;
	unsigned long int l4c[10][10], *p_l4c ;
	unsigned long int l4d[10][10], *p_l4d ;
	long int id[10][10], *p_id ;
	float    RMIN, RMAX, RSUM,  RT ;
	long int I2, I1, i ;
	p_rc = &(rc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rc+i)   = 2.0 ;
		*(p_rc+50+i)= 1.0 ;
	}
	p_rd = &(rd[0][0]) ;
	for(i=0; i<50; i++){
		*(p_rd+i)   = 1.0 ;
		*(p_rd+50+i)= 2.0 ;
	}
	p_dc = &(dc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_dc+i)   = 1.0 ;
		*(p_dc+50+i)= 2.0 ;
	}
	p_qc = &(qc[0][0]) ;
	for(i=0; i<50; i++){
		*(p_qc+i)   = 2.0 ;
		*(p_qc+50+i)= 1.0 ;
	}
	p_cec = &(cec[0][0]) ;
	for(i=0; i<50; i++){
		(p_cec+i)->real   = 1.0 ;
		(p_cec+i)->imag   = 1.0 ;
		(p_cec+50+i)->real= 0.0 ;
		(p_cec+50+i)->imag= 1.0 ;
	}
	p_ced = &(ced[0][0]) ;
	for(i=0; i<50; i++){
		(p_ced+i)->real   = 1.0 ;
		(p_ced+i)->imag   = 1.0 ;
		(p_ced+50+i)->real= 0.0 ;
		(p_ced+50+i)->imag= 1.0 ;
	}
	p_cdc = &(cdc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdc+i)->dreal   = 0.0 ;
		(p_cdc+i)->dimag   = 1.0 ;
		(p_cdc+50+i)->dreal= 2.0 ;
		(p_cdc+50+i)->dimag= 1.0 ;
	}
	p_cdd = &(cdd[0][0]) ;
	for(i=0; i<50; i++){
		(p_cdd+i)->dreal   = 0.0 ;
		(p_cdd+i)->dimag   = 1.0 ;
		(p_cdd+50+i)->dreal= 2.0 ;
		(p_cdd+50+i)->dimag= 1.0 ;
	}
	p_cqc = &(cqc[0][0]) ;
	for(i=0; i<50; i++){
		(p_cqc+i)->qreal   = 0.0 ;
		(p_cqc+i)->qimag   = 1.0 ;
		(p_cqc+50+i)->qreal= 2.0 ;
		(p_cqc+50+i)->qimag= 1.0 ;
	}
	p_l4b = &(l4b[0][0]) ;
	for(i=0; i<50; i++)
	{ 
		*(p_l4b+i)       = TRUE ; 
	}
	for(i=0; i<30; i++)
	{ 
		*(p_l4b+50+i)    = FALSE; 
	}
	for(i=0; i<20; i++){
		*(p_l4b+50+30+i) = TRUE ;
	}
	p_l4c = &(l4c[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4c+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4c+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4c+10+40+i) = TRUE ;
	}
	p_l4d = &(l4d[0][0]) ;
	for(i=0; i<10; i++)
	{ 
		*(p_l4d+i)       = TRUE ; 
	}
	for(i=0; i<40; i++)
	{ 
		*(p_l4d+10+i)    = FALSE; 
	}
	for(i=0; i<50; i++){
		*(p_l4d+10+40+i) = TRUE ;
	}
	p_id = &(id[0][0]) ;
	for(i=0; i<100; i++){
		*(p_id+i) = 0 ;
	}
	RT=0.0;
	RMIN = 0.0 ;
	RMAX = 0.0 ;
	RSUM = 0.0 ;
	for(I1=1;I1<=10;I1++)
	{
		for(I2=1;I2<=10;I2++)
		{
			if (L4A(I1) || L4B(I2,I1) != L4C(I2,I1))
			{
				if ((RA(I1)-RB(I2)) >= 0.)
				{
					CEC(I2,I1).real = RA(I1) + RA(I1) ;
					CEC(I2,I1).imag = RB(I1) + RA(I1) ;
					CDC(I2,I1).dreal= DA(I1) + RB(I2) ;
					CDC(I2,I1).dimag= DB(I1) + RB(I2) ;
					RC(I2,I1)= CEC(I2,I1).real + RA(I1) + RB(I2) ;
					DC(I2,I1)= CDC(I2,I1).dreal+ DA(I1) + DB(I2) ;
					QC(I2,I1)= RC(I2,I1) + DC(I2,I1);
					CQC(I2,I1).qreal= CDC(I2,I1).dreal + RC(I2,I1) ;
					CQC(I2,I1).qimag= CDC(I2,I1).dimag + RC(I2,I1) ;
					RT= RC(I2,I1) + DC(I2,I1);
				}
				RA(I1)= RC(I2,I1)*1.0 + DC(I2,I1)*RA(I1);
				CED(I1,I2).real= (CEC(I2,I1).real * CEA(I1).real) -
				    (CEC(I2,I1).imag * CEA(I1).imag) +
				    CEB(I2).real ;
				CED(I1,I2).imag= (CEC(I2,I1).real * CEA(I1).imag) +
				    (CEC(I2,I1).imag * CEA(I1).real) +
				    CEB(I2).imag ;
				CDD(I2,I1).dreal= CED(I1,I2).real + RA(I1) +  0.0*RB(I2);
				CDD(I2,I1).dimag= CED(I1,I2).imag + RA(I1) +  1.0*RB(I2);
			}
			if (fabs(CED(I1,I2).real) >  5.0)
			{
				L4C(I2,I1)= FALSE ;
				CED(I1,I2).real= 0.0 ;
			}
			RC(I2,I1)=RC(I2,I1)+RA(I1)+RT;
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf("****OPSEL**\n");
	CTR=0;
	printf(" CEC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cec+I)->real,(p_cec+I)->imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=0;I<10*10;I++){
		printf(" (%g,%g)",(p_cdc+I)->dreal,(p_cdc+I)->dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",RC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" QC  =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %g",(double)QC(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CQC =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",(double)CQC(I,J).qreal,(double)CQC(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" RA  =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CDD(I,J).dreal,CDD(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" L4C =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" %ld",L4C(I,J));
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CED =");
	for(J=1;J<=10;J++){
		for(I=1;I<=10;I++){
			printf(" (%g,%g)",CED(I,J).real,CED(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	return 0;
}

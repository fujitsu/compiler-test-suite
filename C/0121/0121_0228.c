#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int OPSEL();
int LIST();
int MASK();
int CMEX();
long int NCWNR=10,CWNR=7,CTR,I;
int main()
{
	printf("  *** *** \n");
	MASK();
	LIST();
	CMEX();
	OPSEL();
	exit (0);
}
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CDA(i) cda[i-1]
#define CDB(i) cdb[i-1]
#define L4A(i) l4a[i-1]
#define L4B(i) l4b[i-1]
#define I4A(i) i4a[i-1]
#define    TRUE    1
#define    FALSE   0
int MASK()
{
	static float ra[10]     = {
		1., 1., 1., 1., 1., 1., 1., 1., 1., 1.	};
	static float rb[10]     = {
		2., 2., 2., 2., 2., 2., 2., 2., 2., 2.	};
	static double da[10]    = {
		1., 1., 1., 1., 1., 3., 3., 3., 3., 3.	};
	static double db[10]    = {
		0., 0., 0., 0., 0., 4., 4., 4., 4., 4.	};
	static COMPLEX8 cea[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX8 ceb[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX16 cda[10]= {
		{0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.},
		                            {0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.}	};
	COMPLEX16 cdb[10];
	static unsigned long int l4a[10]
	= {
		TRUE,TRUE,TRUE, FALSE,FALSE,
		                            FALSE,FALSE, TRUE,TRUE,TRUE	};
	unsigned long int l4b[10];
	static long int i4a[10] = {
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1	};
	float     RT,RU;
	long int  i, I1 ;
	printf(" *** *** MASK ***\n");
	printf("\n");
	for(I1=1;I1<=10;I1++)
	{
		if (L4A(I1)==1)
		{
			RT = RA(I1)+CEA(I1).real ;
		}
		else
		{
			RT = RA(I1)+CEA(I1).real*CEB(I1).real ;
		}
		if (DA(I1) >  DB(I1))
		{
			CDA(I1).dreal = RT ;
			CDA(I1).dimag = RT+1. ;
		}
		RU = RT+(float)(I4A(I1)) ;
		RT = 0. ;
		if (fabs(CDA(I1).dreal) < 1.)    goto LBL_12 ;
		goto LBL_13;
LBL_12:
		;
		RA(I1)=RU+RT;
		goto LBL_11;
LBL_13:
		;
		RA(I1)=RU+RA(I1);
LBL_11:
		;
	}
	CTR=0;
	printf(" CDA =");
	for(I=1;I<=10;I++){
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
	printf(" RA  =");
	for(I=1;I<=10;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
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
	static float ra[10]     = {
		1., 1., 1., 1., 1., 1., 1., 1., 1., 1.	};
	static float rb[10]     = {
		2., 2., 2., 2., 2., 2., 2., 2., 2., 2.	};
	static double da[10]    = {
		1., 1., 1., 1., 1., 3., 3., 3., 3., 3.	};
	static double db[10]    = {
		0., 0., 0., 0., 0., 4., 4., 4., 4., 4.	};
	static COMPLEX8 cea[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX8 ceb[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX16 cda[10]= {
		{0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.},
		                            {0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.}	};
	COMPLEX16 cdb[10];
	static unsigned long int l4a[10]
	= {
		TRUE,TRUE,TRUE, FALSE,FALSE,
		                            FALSE,FALSE, TRUE,TRUE,TRUE	};
	unsigned long int l4b[10];
	static long int i4a[10] = {
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1	};
	float     RT,RU;
	long int  i, I1 ;
	printf("  *** *** LIST *** \n");
	printf("\n");
	for(I1=1;I1<=10;I1++)
	{
		if (L4A(I1)==1)
		{
			RT = RA(I1)+CEA(I1).real ;
		}
		else
		{
			RT = RA(I1)+CEA(I1).real*CEB(I1).real;
		}
		if (DA(I1) >  DB(I1))
		{
			CDA(I1).dreal = RT ;
			CDA(I1).dimag = RT+1. ;
		}
		RU = RT+(float)(I4A(I1)) ;
		RT = 0. ;
		if (fabs(CDA(I1).dreal) < 1.)    goto LBL_12 ;
		goto LBL_13 ;
LBL_12:
		;
		RA(I1)=RU+RT ;
		goto LBL_11 ;
LBL_13:
		;
		RA(I1)=RU+RA(I1);
LBL_11:
		;
	}
	CTR=0;
	printf(" CDA =");
	for(I=1;I<=10;I++){
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
	printf(" RA  =");
	for(I=1;I<=10;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
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
	static float ra[10]     = {
		1., 1., 1., 1., 1., 1., 1., 1., 1., 1.	};
	static float rb[10]     = {
		2., 2., 2., 2., 2., 2., 2., 2., 2., 2.	};
	static double da[10]    = {
		1., 1., 1., 1., 1., 3., 3., 3., 3., 3.	};
	static double db[10]    = {
		0., 0., 0., 0., 0., 4., 4., 4., 4., 4.	};
	static COMPLEX8 cea[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX8 ceb[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX16 cda[10]= {
		{0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.},
		                            {0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.}	};
	COMPLEX16 cdb[10];
	static unsigned long int l4a[10]
	= {
		TRUE,TRUE,TRUE, FALSE,FALSE,
		                            FALSE,FALSE, TRUE,TRUE,TRUE	};
	unsigned long int l4b[10];
	static long int i4a[10] = {
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1	};
	float     RT,RU;
	long int  i, I1 ;
	printf("  *** *** COMPRESS /EXPAND *** \n");
	printf("\n");
	for(I1=1;I1<=10;I1++)
	{
		if (L4A(I1)==1)
		{
			RT = RA(I1)+CEA(I1).real ;
		}
		else
		{
			RT = RA(I1)+CEA(I1).real*CEB(I1).real;
		}
		if (DA(I1) >  DB(I1))
		{
			CDA(I1).dreal = RT ;
			CDA(I1).dimag = RT+1. ;
		}
		RU = RT+I4A(I1) ;
		RT = 0. ;
		if (fabs(CDA(I1).dreal) < 1.)    goto LBL_12 ;
		goto LBL_13;
LBL_12:
		;
		RA(I1)=RU+RT;
		goto LBL_11;
LBL_13:
		;
		RA(I1)=RU+RA(I1);
LBL_11:
		;
	}
	CTR=0;
	printf(" CDA =");
	for(I=1;I<=10;I++){
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
	printf(" RA  =");
	for(I=1;I<=10;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
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
	static float ra[10]     = {
		1., 1., 1., 1., 1., 1., 1., 1., 1., 1.	};
	static float rb[10]     = {
		2., 2., 2., 2., 2., 2., 2., 2., 2., 2.	};
	static double da[10]    = {
		1., 1., 1., 1., 1., 3., 3., 3., 3., 3.	};
	static double db[10]    = {
		0., 0., 0., 0., 0., 4., 4., 4., 4., 4.	};
	static COMPLEX8 cea[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX8 ceb[10] = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                            {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.}	};
	static COMPLEX16 cda[10]= {
		{0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.},
		                            {0.,0.},{0.,0.},{0.,0.},{0.,0.},{0.,0.}	};
	COMPLEX16 cdb[10];
	static unsigned long int l4a[10]
	= {
		TRUE,TRUE,TRUE, FALSE,FALSE,
		                            FALSE,FALSE, TRUE,TRUE,TRUE	};
	unsigned long int l4b[10];
	static long int i4a[10] = {
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1	};
	float     RT,RU;
	long int  i, I1 ;
	printf("  *** *** OPSEL *** \n");
	printf("\n");
	for(I1=1;I1<=10;I1++)
	{
		if (L4A(I1)==1)
		{
			RT = RA(I1)+CEA(I1).real ;
		}
		else
		{
			RT = RA(I1)+CEA(I1).real*CEB(I1).real ;
		}
		if (DA(I1) >  DB(I1))
		{
			CDA(I1).dreal = RT ;
			CDA(I1).dimag = RT+1. ;
		}
		RU = RT+I4A(I1) ;
		RT = 0. ;
		if (fabs(CDA(I1).dreal) < 1.)    goto LBL_12 ;
		goto LBL_13;
LBL_12:
		;
		RA(I1)=RU+RT;
		goto LBL_11;
LBL_13:
		;
		RA(I1)=RU+RA(I1);
LBL_11:
		;
	}
	CTR=0;
	printf(" CDA =");
	for(I=1;I<=10;I++){
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
	printf(" RA  =");
	for(I=1;I<=10;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	return 0;
}

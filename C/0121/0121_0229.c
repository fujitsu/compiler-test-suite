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
	printf(" ******\n");
	MASK();
	LIST();
	CMEX();
	OPSEL();
	exit (0);
}
#define RA(i) ra[6+i-1]
#define RB(i) rb[6+i-1]
#define RC(i,j) rc[6+i-1][6+j-1]
#define DC(i,j) dc[6+i-1][6+j-1]
#define DA(i) da[6+i-1]
#define QA(i) qa[6+i-1]
#define CEA(i) cea[6+i-1]
#define CDB(i) cdb[6+i-1]
#define LBA(i) lba[6+i-1]
#define L4A(i) l4a[6+i-1]
#define    TRUE    1
#define    FALSE   0
int MASK()
{
	static float  ra[6+15]     = {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                               2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float  rb[6+15]     = {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                               0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float   rc[6+15][6+15],  *p_rc ;
	double  dc[6+15][6+15],  *p_dc ;
	static double da[6+15]     = {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                               3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static long double qa[6+15]= {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	static COMPLEX8 cea[6+15]  = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.}	};
	static COMPLEX16 cdb[6+15] = {
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.}	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	static unsigned char lba[6+15]= {
		TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	static unsigned long int l4a[6+15]=
	{
		TRUE, TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	long int   I1, L4T, I2, i ;
	float      RT, RSUM, RSM1 ;
	p_rc = &(rc[0][0]) ;
	p_dc = &(dc[0][0]) ;
	for(i=0; i< 241; i++){
		*(p_rc + i) = 2.0 ;
		*(p_dc + i) = 1.0 ;
	}
	for(i=0; i< 200; i++){
		*(p_rc+241 + i) = 1.0 ;
		*(p_dc+241 + i) = 2.0 ;
	}
	RSUM = 0.0 ;
	RSM1 = 0.0 ;
	for(I1=-5;I1<=15;I1+=2)
	{
		if (RA(I1) >= 1. &&  RA(I1) <= 3.0 || L4A(I1)==1)
		{
			RB(I1)= 1.0+I1;
			RA(I1)= RB(I1)+RA(I1)*1.5+RA(I1)*1.3;
			DA(I1)= CEA(I1).real;
			QA(I1)= (CEA(I1).real*CDB(I1).dreal -
			    CEA(I1).imag*CDB(I1).dimag) ;
			LBA(I1)= TRUE ;
			CEA(I1).real= (RA(I1)*CEA(I1).real - RB(I1)*CEA(I1).imag) ;
			CEA(I1).imag= (RA(I1)*CEA(I1).imag + RB(I1)*CEA(I1).real) ;
			RT= RA(I1)+RB(I1)*3.;
			CET.dreal= CEA(I1).real + RT*1.5;
			CET.dimag= CEA(I1).imag + RT*1.5;
			L4T= !L4A(I1) || LBA(I1);
		}
		for(I2=1;I2<=10;I2++)
		{
			if (RC(I2,I1) <  0)  goto LBL_13 ;
			if (RC(I2,I1) == 0)  goto LBL_14 ;
			goto LBL_12 ;
LBL_13:
			;
			DC(I2,I1)= -RC(I2,I1);
			goto LBL_12;
LBL_14:
			;
			DC(I2,I1)=0.0;
LBL_12:
			;
		}
		if (L4A(I1)==TRUE)
		{
			RSUM=RSUM+RT;
			RSM1=RSM1+DA(I1)+RA(I1);
			CEA(I1).real= CET.dreal + RT*RA(I1) + I1 ;
			CEA(I1).imag= CET.dimag + RT*RA(I1) + I1 ;
		}
LBL_11:
		;
	}
	printf(" ****MASK**\n");
	printf(" RSM1 = %g\n",RSM1);
	printf("\n") ;
	printf(" RSUM = %g\n",RSUM);
	printf("\n") ;
	CTR=0;
	printf(" RA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RB   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBA  =");
	for(I=-5;I<=15;I++){
		printf(" %lu",LBA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA  =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC   =");
	for(J=-5;J<=15;J++){
		for(I=-5;I<=15;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	return 0;
}
int LIST()
{
	static float  ra[6+15]     = {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                               2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float  rb[6+15]     = {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                               0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float   rc[6+15][6+15],  *p_rc ;
	double  dc[6+15][6+15],  *p_dc ;
	static double da[6+15]     = {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                               3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static long double qa[6+15]= {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	static COMPLEX8 cea[6+15]  = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.}	};
	static COMPLEX16 cdb[6+15] = {
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.}	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	static unsigned char lba[6+15]= {
		TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	static unsigned long int l4a[6+15]=
	{
		TRUE, TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	long int   I1, L4T, I2, i ;
	float      RT, RSUM, RSM1 ;
	p_rc = &(rc[0][0]) ;
	p_dc = &(dc[0][0]) ;
	for(i=0; i< 241; i++){
		*(p_rc + i) = 2.0 ;
		*(p_dc + i) = 1.0 ;
	}
	for(i=0; i< 200; i++){
		*(p_rc+241 + i) = 1.0 ;
		*(p_dc+241 + i) = 2.0 ;
	}
	RSUM = 0.0 ;
	RSM1 = 0.0 ;
	for(I1=-5;I1<=15;I1+=2)
	{
		if (RA(I1) >= 1. &&  RA(I1) <= 3.0 || L4A(I1)==1)
		{
			RB(I1)= 1.0+I1;
			RA(I1)= RB(I1)+RA(I1)*1.5+RA(I1)*1.3;
			DA(I1)= CEA(I1).real;
			QA(I1)= (CEA(I1).real*CDB(I1).dreal -
			    CEA(I1).imag*CDB(I1).dimag) ;
			LBA(I1)= TRUE ;
			CEA(I1).real= (RA(I1)*CEA(I1).real - RB(I1)*CEA(I1).imag) ;
			CEA(I1).imag= (RA(I1)*CEA(I1).imag + RB(I1)*CEA(I1).real) ;
			RT= RA(I1)+RB(I1)*3.;
			CET.dreal= CEA(I1).real + RT*1.5;
			CET.dimag= CEA(I1).imag + RT*1.5;
			L4T= !L4A(I1) || LBA(I1);
		}
		for(I2=1;I2<=10;I2++)
		{
			if (RC(I2,I1) <  0)  goto LBL_13 ;
			if (RC(I2,I1) == 0)  goto LBL_14 ;
			goto LBL_12 ;
LBL_13:
			;
			DC(I2,I1)= -RC(I2,I1);
			goto LBL_12;
LBL_14:
			;
			DC(I2,I1)=0.0;
LBL_12:
			;
		}
		if (L4A(I1)==TRUE)
		{
			RSUM=RSUM+RT;
			RSM1=RSM1+DA(I1)+RA(I1);
			CEA(I1).real= CET.dreal + RT*RA(I1) + I1 ;
			CEA(I1).imag= CET.dimag + RT*RA(I1) + I1 ;
		}
LBL_11:
		;
	}
	printf(" ****LIST**\n");
	printf(" RSM1 = %g\n",RSM1);
	printf("\n") ;
	printf(" RSUM = %g\n",RSUM);
	printf("\n") ;
	CTR=0;
	printf(" RA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RB   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBA  =");
	for(I=-5;I<=15;I++){
		printf(" %lu",LBA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA  =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC   =");
	for(J=-5;J<=15;J++){
		for(I=-5;I<=15;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	return 0;
}
int CMEX()
{
	static float  ra[6+15]     = {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                               2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float  rb[6+15]     = {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                               0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float   rc[6+15][6+15],  *p_rc ;
	double  dc[6+15][6+15],  *p_dc ;
	static double da[6+15]     = {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                               3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static long double qa[6+15]= {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	static COMPLEX8 cea[6+15]  = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.}	};
	static COMPLEX16 cdb[6+15] = {
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.}	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	static unsigned char lba[6+15]= {
		TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	static unsigned long int l4a[6+15]=
	{
		TRUE, TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	long int   I1, L4T, I2, i ;
	float      RT, RSUM, RSM1 ;
	p_rc = &(rc[0][0]) ;
	p_dc = &(dc[0][0]) ;
	for(i=0; i< 241; i++){
		*(p_rc + i) = 2.0 ;
		*(p_dc + i) = 1.0 ;
	}
	for(i=0; i< 200; i++){
		*(p_rc+241 + i) = 1.0 ;
		*(p_dc+241 + i) = 2.0 ;
	}
	RSUM = 0.0 ;
	RSM1 = 0.0 ;
	for(I1=-5;I1<=15;I1+=2)
	{
		if (RA(I1) >= 1. &&  RA(I1) <= 3.0 || L4A(I1)==1)
		{
			RB(I1)= 1.0+I1;
			RA(I1)= RB(I1)+RA(I1)*1.5+RA(I1)*1.3;
			DA(I1)= CEA(I1).real;
			QA(I1)= (CEA(I1).real*CDB(I1).dreal -
			    CEA(I1).imag*CDB(I1).dimag) ;
			LBA(I1)= TRUE ;
			CEA(I1).real= (RA(I1)*CEA(I1).real - RB(I1)*CEA(I1).imag) ;
			CEA(I1).imag= (RA(I1)*CEA(I1).imag + RB(I1)*CEA(I1).real) ;
			RT= RA(I1)+RB(I1)*3.;
			CET.dreal= CEA(I1).real + RT*1.5;
			CET.dimag= CEA(I1).imag + RT*1.5;
			L4T= !L4A(I1) || LBA(I1);
		}
		for(I2=1;I2<=10;I2++)
		{
			if (RC(I2,I1) <  0)  goto LBL_13 ;
			if (RC(I2,I1) == 0)  goto LBL_14 ;
			goto LBL_12 ;
LBL_13:
			;
			DC(I2,I1)= -RC(I2,I1);
			goto LBL_12;
LBL_14:
			;
			DC(I2,I1)=0.0;
LBL_12:
			;
		}
		if (L4A(I1)==TRUE)
		{
			RSUM=RSUM+RT;
			RSM1=RSM1+DA(I1)+RA(I1);
			CEA(I1).real= CET.dreal + RT*RA(I1) + I1 ;
			CEA(I1).imag= CET.dimag + RT*RA(I1) + I1 ;
		}
LBL_11:
		;
	}
	printf(" ****CMEX**\n");
	printf(" RSM1 = %g\n",RSM1);
	printf("\n") ;
	printf(" RSUM = %g\n",RSUM);
	printf("\n") ;
	CTR=0;
	printf(" RA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RB   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBA  =");
	for(I=-5;I<=15;I++){
		printf(" %lu",LBA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA  =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC   =");
	for(J=-5;J<=15;J++){
		for(I=-5;I<=15;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	return 0;
}
int OPSEL()
{
	static float  ra[6+15]     = {
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
		                               2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	static float  rb[6+15]     = {
		3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,
		                               0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float   rc[6+15][6+15],  *p_rc ;
	double  dc[6+15][6+15],  *p_dc ;
	static double da[6+15]     = {
		5.,5.,5.,5.,5.,5.,5.,5.,5.,5.,
		                               3.,3.,3.,3.,3.,3.,3.,3.,3.,3.,3.	};
	static long double qa[6+15]= {
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,
		                               1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	static COMPLEX8 cea[6+15]  = {
		{1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {1.,1.},{1.,1.},{1.,1.},{1.,1.},{1.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.}	};
	static COMPLEX16 cdb[6+15] = {
		{0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {0.,1.},{0.,1.},{0.,1.},{0.,1.},{0.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.},{2.,1.},{2.,1.},{2.,1.},{2.,1.},
		                               {2.,1.}	};
	COMPLEX16 CET={ 
		0.0, 0.0 	};
	static unsigned char lba[6+15]= {
		TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	static unsigned long int l4a[6+15]=
	{
		TRUE, TRUE, TRUE, TRUE, TRUE, TRUE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  FALSE,FALSE,FALSE,FALSE,FALSE,
		                                  TRUE, TRUE, TRUE, TRUE, TRUE	};
	long int   I1, L4T, I2, i ;
	float      RT, RSUM, RSM1 ;
	p_rc = &(rc[0][0]) ;
	p_dc = &(dc[0][0]) ;
	for(i=0; i< 241; i++){
		*(p_rc + i) = 2.0 ;
		*(p_dc + i) = 1.0 ;
	}
	for(i=0; i< 200; i++){
		*(p_rc+241 + i) = 1.0 ;
		*(p_dc+241 + i) = 2.0 ;
	}
	RSUM = 0.0 ;
	RSM1 = 0.0 ;
	for(I1=-5;I1<=15;I1+=2)
	{
		if (RA(I1) >= 1. &&  RA(I1) <= 3.0 || L4A(I1)==1)
		{
			RB(I1)= 1.0+I1;
			RA(I1)= RB(I1)+RA(I1)*1.5+RA(I1)*1.3;
			DA(I1)= CEA(I1).real;
			QA(I1)= (CEA(I1).real*CDB(I1).dreal -
			    CEA(I1).imag*CDB(I1).dimag) ;
			LBA(I1)= TRUE ;
			CEA(I1).real= (RA(I1)*CEA(I1).real - RB(I1)*CEA(I1).imag) ;
			CEA(I1).imag= (RA(I1)*CEA(I1).imag + RB(I1)*CEA(I1).real) ;
			RT= RA(I1)+RB(I1)*3.;
			CET.dreal= CEA(I1).real + RT*1.5;
			CET.dimag= CEA(I1).imag + RT*1.5;
			L4T= !L4A(I1) || LBA(I1);
		}
		for(I2=1;I2<=10;I2++)
		{
			if (RC(I2,I1) <  0)  goto LBL_13 ;
			if (RC(I2,I1) == 0)  goto LBL_14 ;
			goto LBL_12 ;
LBL_13:
			;
			DC(I2,I1)= -RC(I2,I1);
			goto LBL_12;
LBL_14:
			;
			DC(I2,I1)=0.0;
LBL_12:
			;
		}
		if (L4A(I1)==TRUE)
		{
			RSUM=RSUM+RT;
			RSM1=RSM1+DA(I1)+RA(I1);
			CEA(I1).real= CET.dreal + RT*RA(I1) + I1 ;
			CEA(I1).imag= CET.dimag + RT*RA(I1) + I1 ;
		}
LBL_11:
		;
	}
	printf(" ****OPSEL**\n");
	printf(" RSM1 = %g\n",RSM1);
	printf("\n") ;
	printf(" RSUM = %g\n",RSUM);
	printf("\n") ;
	CTR=0;
	printf(" RA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" RB   =");
	for(I=-5;I<=15;I++){
		printf(" %g",RB(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" QA   =");
	for(I=-5;I<=15;I++){
		printf(" %g",(double)QA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" LBA  =");
	for(I=-5;I<=15;I++){
		printf(" %lu",LBA(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CEA  =");
	for(I=-5;I<=15;I++){
		printf(" (%g,%g)",CEA(I).real,CEA(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" DC   =");
	for(J=-5;J<=15;J++){
		for(I=-5;I<=15;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	return 0;
}

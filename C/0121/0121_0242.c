#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int LIST();
int OPSEL();
int COEX();
int main()
{
	printf("  *****  *****\n");
	LIST();
	COEX();
	OPSEL();
	exit (0);
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I13(i) i13[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define R14(i) r14[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
int LIST()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i13[10]={ 
		1, 1, 2, 2, 3, 3, 1, 1, 2, 2 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	float    r12[10]={ 
		2, 2, 2, 2, 2, 4, 4, 4, 4, 4 	};
	float    r13[10]={
		10, 9, 8, 7, 6, 5, 4, 3, 2, 1 	};
	float    r14[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
	double   d11[10]={ 
		4, 4, 4, 4, 4, 9, 9, 9, 9, 9 	};
	double   d12[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,1,0,0,1,1,0,0,1,1 	};
	unsigned long int l13[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		1,1,1,0,0,0,1,1,1,0 	};
	COMPLEX8 c10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		    0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	COMPLEX8 c11[10]={ 
		1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
		    0, 1, 1, 0, 1, 0, 1, 0, 1, 0 	};
	COMPLEX16 cd10[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd11[10]={ 
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		    16,16,16,16,16,16,16,16,16,16 	};
	COMPLEX8  C10S={
		1,1	};
	COMPLEX16 CD11S={
		2,2	};
	long int  I10S=2;
	long int  I11S=0;
	long int  I12S=1;
	long int  N=10;
	long int  I,NCWNR=8,CWNR=7,CTR;
	unsigned long int L10S=0;
	double    D11S=3.;
	float     D10S,R10S=8.0,EOR;
	printf("  ***** LIST VECTOR METHOD *****\n");
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10(I)=I10(I)*I10S;
LBL_20:
			;
			R10(I)=(float)(I10(I));
LBL_30:
			;
			D10S=D10(I)+sqrt(D11(I))*D11S;
			L11(I)=L12(I) && L13(I);
			if (L11(I)==1)
			{
				D12(I)=D10S+D12(I)*D10S;
				R11(I11(I))=R10(I)*R10S/R12(I11(I));
LBL_40:
				;
				I13(I)=(int)(0.5+pow((double)(I13(I)),(double)I));
				L12(I)=L11(I) || L10S;
LBL_50:
				;
				C10(I11(I)).real=  (  C11(I).real*C10S.real
				    + C11(I).imag*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				C10(I11(I)).imag=  (  C11(I).imag*C10S.real
				    - C11(I).real*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				I11S=I11S+I10(I);
				L14(I11(I))=L11(I) ^ L12(I);
				if (I13(I) > I12S)
				{
					CD10(I).dreal=  CD10(I).dreal
					    - (  CD11(I11(I)).dreal*CD11S.dreal
					    + CD11(I11(I)).dimag*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    - (  CD11(I11(I)).dimag*CD11S.dreal
					    - CD11(I11(I)).dreal*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					R13(I11(I))=R10(I)*(float)(I13(I))+sin(R14(I));
				}
				else
				{
					CD10(I).dreal=  CD10(I).dreal
					    + (  CD11(I11(I)).dreal*CD11S.dreal
					    - CD11(I11(I)).dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    + (  CD11(I11(I)).dreal*CD11S.dimag
					    + CD11(I11(I)).dimag*CD11S.dreal );
				}
			}
			else
			{
				D12(I)=D10S-D12(I)/D10S;
				I13(I)=I13(I)-I;
				L12(I)=L11(I) && L10S;
			}
		}
LBL_10:
		;
	}
	CTR=0;
	printf(" I10 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10 =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L11 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" D12 =");
	for(I=1;I<=10;I++){
		printf(" %g",D12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R11 =");
	for(I=1;I<=10;I++){
		printf(" %g",R11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I13 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L12 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" C10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C10(I).real,C10(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" I11S = %ld \n",I11S);
	CTR=0;
	printf(" L14 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L14(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",CD10(I).dreal,CD10(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R13 =");
	for(I=1;I<=10;I++){
		printf(" %g",R13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I13(i) i13[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define R14(i) r14[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
int COEX()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i13[10]={ 
		1, 1, 2, 2, 3, 3, 1, 1, 2, 2 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	float    r12[10]={ 
		2, 2, 2, 2, 2, 4, 4, 4, 4, 4 	};
	float    r13[10]={
		10, 9, 8, 7, 6, 5, 4, 3, 2, 1 	};
	float    r14[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
	double   d11[10]={ 
		4, 4, 4, 4, 4, 9, 9, 9, 9, 9 	};
	double   d12[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,1,0,0,1,1,0,0,1,1 	};
	unsigned long int l13[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		1,1,1,0,0,0,1,1,1,0 	};
	COMPLEX8 c10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		    0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	COMPLEX8 c11[10]={ 
		1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
		    0, 1, 1, 0, 1, 0, 1, 0, 1, 0 	};
	COMPLEX16 cd10[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd11[10]={ 
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		    16,16,16,16,16,16,16,16,16,16 	};
	COMPLEX8  C10S={
		1,1	};
	COMPLEX16 CD11S={
		2,2	};
	long int  I10S=2;
	long int  I11S=0;
	long int  I12S=1;
	long int  N=10;
	long int  I,NCWNR=8,CWNR=7,CTR;
	unsigned long int L10S=0;
	double    D11S=3.;
	float     D10S,R10S=8.0,EOR;
	printf("  ***** COMPRESS/EXPAND METHOD *****\n");
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10(I)=I10(I)*I10S;
LBL_20:
			;
			R10(I)=(float)(I10(I));
LBL_30:
			;
			D10S=D10(I)+sqrt(D11(I))*D11S;
			L11(I)=L12(I) && L13(I);
			if (L11(I)==1)
			{
				D12(I)=D10S+D12(I)*D10S;
				R11(I11(I))=R10(I)*R10S/R12(I11(I));
LBL_40:
				;
				I13(I)=(int)(0.5+pow((double)(I13(I)),(double)I));
				L12(I)=L11(I) || L10S;
LBL_50:
				;
				C10(I11(I)).real=  (  C11(I).real*C10S.real
				    + C11(I).imag*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				C10(I11(I)).imag=  (  C11(I).imag*C10S.real
				    - C11(I).real*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				I11S=I11S+I10(I);
				L14(I11(I))=L11(I) ^ L12(I);
				if (I13(I) > I12S)
				{
					CD10(I).dreal=  CD10(I).dreal
					    - (  CD11(I11(I)).dreal*CD11S.dreal
					    + CD11(I11(I)).dimag*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    - (  CD11(I11(I)).dimag*CD11S.dreal
					    - CD11(I11(I)).dreal*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					R13(I11(I))=R10(I)*(float)(I13(I))+sin(R14(I));
				}
				else
				{
					CD10(I).dreal=  CD10(I).dreal
					    + (  CD11(I11(I)).dreal*CD11S.dreal
					    - CD11(I11(I)).dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    + (  CD11(I11(I)).dreal*CD11S.dimag
					    + CD11(I11(I)).dimag*CD11S.dreal );
				}
			}
			else
			{
				D12(I)=D10S-D12(I)/D10S;
				I13(I)=I13(I)-I;
				L12(I)=L11(I) && L10S;
			}
		}
LBL_10:
		;
	}
	CTR=0;
	printf(" I10 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10 =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L11 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" D12 =");
	for(I=1;I<=10;I++){
		printf(" %g",D12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R11 =");
	for(I=1;I<=10;I++){
		printf(" %g",R11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I13 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L12 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" C10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C10(I).real,C10(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" I11S = %ld \n",I11S);
	CTR=0;
	printf(" L14 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L14(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",CD10(I).dreal,CD10(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R13 =");
	for(I=1;I<=10;I++){
		printf(" %g",R13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I13(i) i13[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define R14(i) r14[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
int OPSEL()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i13[10]={ 
		1, 1, 2, 2, 3, 3, 1, 1, 2, 2 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	float    r12[10]={ 
		2, 2, 2, 2, 2, 4, 4, 4, 4, 4 	};
	float    r13[10]={
		10, 9, 8, 7, 6, 5, 4, 3, 2, 1 	};
	float    r14[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	double   d10[10]={ 
		1, 1, 1, 1, 1, 2, 2, 2, 2, 2 	};
	double   d11[10]={ 
		4, 4, 4, 4, 4, 9, 9, 9, 9, 9 	};
	double   d12[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,1,0,0,1,1,0,0,1,1 	};
	unsigned long int l13[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		1,1,1,0,0,0,1,1,1,0 	};
	COMPLEX8 c10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		    0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	COMPLEX8 c11[10]={ 
		1, 1, 1, 1, 1, 1, 0, 1, 0, 1,
		    0, 1, 1, 0, 1, 0, 1, 0, 1, 0 	};
	COMPLEX16 cd10[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd11[10]={ 
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		    16,16,16,16,16,16,16,16,16,16 	};
	COMPLEX8  C10S={
		1,1	};
	COMPLEX16 CD11S={
		2,2	};
	long int  I10S=2;
	long int  I11S=0;
	long int  I12S=1;
	long int  N=10;
	long int  I,NCWNR=8,CWNR=7,CTR;
	unsigned long int L10S=0;
	double    D11S=3.;
	float     D10S,R10S=8.0,EOR;
	printf("  ***** GENERAL METHOD *****\n");
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10(I)=I10(I)*I10S;
LBL_20:
			;
			R10(I)=(float)(I10(I));
LBL_30:
			;
			D10S=D10(I)+sqrt(D11(I))*D11S;
			L11(I)=L12(I) && L13(I);
			if (L11(I)==1)
			{
				D12(I)=D10S+D12(I)*D10S;
				R11(I11(I))=R10(I)*R10S/R12(I11(I));
LBL_40:
				;
				I13(I)=(int)(0.5+pow((double)(I13(I)),(double)I));
				L12(I)=L11(I) || L10S;
LBL_50:
				;
				C10(I11(I)).real=  (  C11(I).real*C10S.real
				    + C11(I).imag*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				C10(I11(I)).imag=  (  C11(I).imag*C10S.real
				    - C11(I).real*C10S.imag )
				    / (  C10S.real*C10S.real
				    + C10S.imag*C10S.imag );
				I11S=I11S+I10(I);
				L14(I11(I))=L11(I) ^ L12(I);
				if (I13(I) > I12S)
				{
					CD10(I).dreal=  CD10(I).dreal
					    - (  CD11(I11(I)).dreal*CD11S.dreal
					    + CD11(I11(I)).dimag*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    - (  CD11(I11(I)).dimag*CD11S.dreal
					    - CD11(I11(I)).dreal*CD11S.dimag )
					    / (  CD11S.dreal*CD11S.dreal
					    + CD11S.dimag*CD11S.dimag );
					R13(I11(I))=R10(I)*(float)(I13(I))+sin(R14(I));
				}
				else
				{
					CD10(I).dreal=  CD10(I).dreal
					    + (  CD11(I11(I)).dreal*CD11S.dreal
					    - CD11(I11(I)).dimag*CD11S.dimag );
					CD10(I).dimag=  CD10(I).dimag
					    + (  CD11(I11(I)).dreal*CD11S.dimag
					    + CD11(I11(I)).dimag*CD11S.dreal );
				}
			}
			else
			{
				D12(I)=D10S-D12(I)/D10S;
				I13(I)=I13(I)-I;
				L12(I)=L11(I) && L10S;
			}
		}
LBL_10:
		;
	}
	CTR=0;
	printf(" I10 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R10 =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L11 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" D12 =");
	for(I=1;I<=10;I++){
		printf(" %g",D12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R11 =");
	for(I=1;I<=10;I++){
		printf(" %g",R11(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" I13 =");
	for(I=1;I<=10;I++){
		printf(" %ld",I13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" L12 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L12(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" C10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C10(I).real,C10(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	printf(" I11S = %ld \n",I11S);
	CTR=0;
	printf(" L14 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L14(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CD10 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",CD10(I).dreal,CD10(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R13 =");
	for(I=1;I<=10;I++){
		printf(" %g",R13(I));
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

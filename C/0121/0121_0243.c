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
#define I12(i) i12[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define L15(i) l15[i-1]
int LIST()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		2, 4, 2, 4, 3, 5, 3, 5, 6, 6 	};
	long int i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 2, 3, 4, 5, 2, 2, 2, 2, 2 	};
	double   d10[10]={ 
		7, 7, 7, 7, 7,11,11,11,11,11 	};
	double   d11[10]={ 
		1, 1, 1, 1, 1, 3, 3, 3, 3, 3 	};
	double   d12[10]={ 
		0, 0, 0, 0, 2, 2, 2, 2, 1, 1 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,0,0,0,0,0 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,0,1,0,1,0,1,0,1,0 	};
	unsigned long int l13[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l15[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c10[10]={ 
		1,1,1,1,1,1,1,1,1,1,
		    0,1,0,1,0,1,0,1,0,1 	};
	COMPLEX8 c11[10]={ 
		1,0,1,0,1,0,1,0,1,0,
		    1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c12[10]={ 
		0,0,0,0,0,0,0,0,0,0,
		    0,0,0,0,0,0,0,0,0,0 	};
	COMPLEX16 cd10[10]={ 
		4, 4, 4, 4, 4, 4, 8, 8, 8, 8,
		    8, 8,16,16,16,16,16,16,20,20 	};
	COMPLEX16 cd11[10]={ 
		2, 2, 2, 2, 2, 2, 4, 4, 4, 4,
		    4, 4, 1, 1, 1, 1, 1, 1, 5, 5 	};
	COMPLEX16 cd12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	COMPLEX8  C10S={ 
		0.0, 0.0 	};
	COMPLEX16 CD10S={ 
		0.0, 0.0 	};
	long int N=10,NCWNR=8,CWNR=8,CTR,I;
	long int I10S=0,L10S=0;
	float R10S=0.,D10S=0.;
	printf("  *****  ***** LIST VECTOR METHOD\n");
	for(I=1;I<=N;I++)
	{
		I10S=I10(I)*I11(I);
		R10S=(float)(I10S);
		D10S=(double)(I);
		C10S.real=C10(I).real+C11(I).real;
		C10S.imag=C10(I).imag+C11(I).imag;
		CD10S.dreal=  (  CD10(I).dreal*CD11(I).dreal
		    + CD10(I).dimag*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		CD10S.dimag=  (  CD10(I).dimag*CD11(I).dreal
		    - CD10(I).dreal*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		L10S=L10(I) && L11(I);
		if (L12(I)==1)
		{
			L13(I12(I))=L10S;
			L14(I)=L10S || L10(I);
			L15(I12(I))=L10S;
			R10(I12(I))=R11(I)+(float)(I);
			D10(I)=D10S*sqrt(D11(I))+CD10S.dreal;
			L13(I)=I10S>I;
			CD10(I).dreal
			    =  (  (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dreal
			    + (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			CD10(I).dimag
			    =  (  (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dreal
			    - (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			C12(I12(I)).real=  (  CD10(I).dreal*CD10S.dreal
			    + CD10(I).dimag*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			C12(I12(I)).imag=  (  CD10(I).dimag*CD10S.dreal
			    - CD10(I).dreal*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			D10S=D10(I)-D11(I);
			D12(I)=D10S;
		}
LBL_10:
		;
	}
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
	printf(" L13 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
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
	printf(" D10 =");
	for(I=1;I<=10;I++){
		printf(" %g",D10(I));
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
	printf(" C12 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C12(I).real,C12(I).imag);
		CTR++;
		if (CTR%CWNR==0)
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
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define L15(i) l15[i-1]
int COEX()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		2, 4, 2, 4, 3, 5, 3, 5, 6, 6 	};
	long int i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 2, 3, 4, 5, 2, 2, 2, 2, 2 	};
	double   d10[10]={ 
		7, 7, 7, 7, 7,11,11,11,11,11 	};
	double   d11[10]={ 
		1, 1, 1, 1, 1, 3, 3, 3, 3, 3 	};
	double   d12[10]={ 
		0, 0, 0, 0, 2, 2, 2, 2, 1, 1 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,0,0,0,0,0 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,0,1,0,1,0,1,0,1,0 	};
	unsigned long int l13[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l15[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c10[10]={ 
		1,1,1,1,1,1,1,1,1,1,
		    0,1,0,1,0,1,0,1,0,1 	};
	COMPLEX8 c11[10]={ 
		1,0,1,0,1,0,1,0,1,0,
		    1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c12[10]={ 
		0,0,0,0,0,0,0,0,0,0,
		    0,0,0,0,0,0,0,0,0,0 	};
	COMPLEX16 cd10[10]={ 
		4, 4, 4, 4, 4, 4, 8, 8, 8, 8,
		    8, 8,16,16,16,16,16,16,20,20 	};
	COMPLEX16 cd11[10]={ 
		2, 2, 2, 2, 2, 2, 4, 4, 4, 4,
		    4, 4, 1, 1, 1, 1, 1, 1, 5, 5 	};
	COMPLEX16 cd12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	COMPLEX8  C10S={ 
		0.0, 0.0 	};
	COMPLEX16 CD10S={ 
		0.0, 0.0 	};
	long int N=10,NCWNR=8,CWNR=8,CTR,I;
	long int I10S=0,L10S=0;
	float R10S=0.,D10S=0.;
	printf("  *****  ***** COMPRESS EXPAND METHOD \n");
	for(I=1;I<=N;I++)
	{
		I10S=I10(I)*I11(I);
		R10S=(float)(I10S);
		D10S=(double)(I);
		C10S.real=C10(I).real+C11(I).real;
		C10S.imag=C10(I).imag+C11(I).imag;
		CD10S.dreal=  (  CD10(I).dreal*CD11(I).dreal
		    + CD10(I).dimag*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		CD10S.dimag=  (  CD10(I).dimag*CD11(I).dreal
		    - CD10(I).dreal*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		L10S=L10(I) && L11(I);
		if (L12(I)==1)
		{
			L13(I12(I))=L10S;
			L14(I)=L10S || L10(I);
			L15(I12(I))=L10S;
			R10(I12(I))=R11(I)+(float)(I);
			D10(I)=D10S*sqrt(D11(I))+CD10S.dreal;
			L13(I)=I10S>I;
			CD10(I).dreal
			    =  (  (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dreal
			    + (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			CD10(I).dimag
			    =  (  (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dreal
			    - (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			C12(I12(I)).real=  (  CD10(I).dreal*CD10S.dreal
			    + CD10(I).dimag*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			C12(I12(I)).imag=  (  CD10(I).dimag*CD10S.dreal
			    - CD10(I).dreal*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			D10S=D10(I)-D11(I);
			D12(I)=D10S;
		}
LBL_10:
		;
	}
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
	printf(" L13 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
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
	printf(" D10 =");
	for(I=1;I<=10;I++){
		printf(" %g",D10(I));
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
	printf(" C12 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C12(I).real,C12(I).imag);
		CTR++;
		if (CTR%CWNR==0)
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
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define L15(i) l15[i-1]
int OPSEL()
{
	long int i10[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int i11[10]={ 
		2, 4, 2, 4, 3, 5, 3, 5, 6, 6 	};
	long int i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float    r10[10]={ 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0 	};
	float    r11[10]={ 
		1, 2, 3, 4, 5, 2, 2, 2, 2, 2 	};
	double   d10[10]={ 
		7, 7, 7, 7, 7,11,11,11,11,11 	};
	double   d11[10]={ 
		1, 1, 1, 1, 1, 3, 3, 3, 3, 3 	};
	double   d12[10]={ 
		0, 0, 0, 0, 2, 2, 2, 2, 1, 1 	};
	unsigned long int l10[10]={ 
		1,1,1,1,1,0,0,0,0,0 	};
	unsigned long int l11[10]={ 
		0,0,0,0,0,0,0,0,0,0 	};
	unsigned long int l12[10]={ 
		1,0,1,0,1,0,1,0,1,0 	};
	unsigned long int l13[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l14[10]={ 
		0,0,0,0,0,1,1,1,1,1 	};
	unsigned long int l15[10]={ 
		1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c10[10]={ 
		1,1,1,1,1,1,1,1,1,1,
		    0,1,0,1,0,1,0,1,0,1 	};
	COMPLEX8 c11[10]={ 
		1,0,1,0,1,0,1,0,1,0,
		    1,1,1,1,1,1,1,1,1,1 	};
	COMPLEX8 c12[10]={ 
		0,0,0,0,0,0,0,0,0,0,
		    0,0,0,0,0,0,0,0,0,0 	};
	COMPLEX16 cd10[10]={ 
		4, 4, 4, 4, 4, 4, 8, 8, 8, 8,
		    8, 8,16,16,16,16,16,16,20,20 	};
	COMPLEX16 cd11[10]={ 
		2, 2, 2, 2, 2, 2, 4, 4, 4, 4,
		    4, 4, 1, 1, 1, 1, 1, 1, 5, 5 	};
	COMPLEX16 cd12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	COMPLEX8  C10S={ 
		0.0, 0.0 	};
	COMPLEX16 CD10S={ 
		0.0, 0.0 	};
	long int N=10,NCWNR=8,CWNR=8,CTR,I;
	long int I10S=0,L10S=0;
	float R10S=0.,D10S=0.;
	printf("  *****  ***** GENERAL METHOD \n");
	for(I=1;I<=N;I++)
	{
		I10S=I10(I)*I11(I);
		R10S=(float)(I10S);
		D10S=(double)(I);
		C10S.real=C10(I).real+C11(I).real;
		C10S.imag=C10(I).imag+C11(I).imag;
		CD10S.dreal=  (  CD10(I).dreal*CD11(I).dreal
		    + CD10(I).dimag*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		CD10S.dimag=  (  CD10(I).dimag*CD11(I).dreal
		    - CD10(I).dreal*CD11(I).dimag )
		    / (  CD11(I).dreal*CD11(I).dreal
		    + CD11(I).dimag*CD11(I).dimag );
		L10S=L10(I) && L11(I);
		if (L12(I)==1)
		{
			L13(I12(I))=L10S;
			L14(I)=L10S || L10(I);
			L15(I12(I))=L10S;
			R10(I12(I))=R11(I)+(float)(I);
			D10(I)=D10S*sqrt(D11(I))+CD10S.dreal;
			L13(I)=I10S>I;
			CD10(I).dreal
			    =  (  (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dreal
			    + (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			CD10(I).dimag
			    =  (  (  CD10S.dreal*CD11(I).dimag
			    + CD10S.dimag*CD11(I).dreal)*CD12(I).dreal
			    - (  CD10S.dreal*CD11(I).dreal
			    - CD10S.dimag*CD11(I).dimag)*CD12(I).dimag )
			    / (  CD12(I).dreal*CD12(I).dreal
			    + CD12(I).dimag*CD12(I).dimag );
			C12(I12(I)).real=  (  CD10(I).dreal*CD10S.dreal
			    + CD10(I).dimag*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			C12(I12(I)).imag=  (  CD10(I).dimag*CD10S.dreal
			    - CD10(I).dreal*CD10S.dimag )
			    / (  CD10S.dreal*CD10S.dreal
			    + CD10S.dimag*CD10S.dimag );
			D10S=D10(I)-D11(I);
			D12(I)=D10S;
		}
LBL_10:
		;
	}
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
	printf(" L13 =");
	for(I=1;I<=10;I++){
		printf(" %lu",L13(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
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
	printf(" D10 =");
	for(I=1;I<=10;I++){
		printf(" %g",D10(I));
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
	printf(" C12 =");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",C12(I).real,C12(I).imag);
		CTR++;
		if (CTR%CWNR==0)
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
	return 0;
}

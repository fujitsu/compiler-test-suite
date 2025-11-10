#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int OPSEL();
int COEX();
int LIST();
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
#define I13(i) i13[i-1]
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
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
int LIST()
{
	long int  i10[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	long int  i11[10]={ 
		2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	long int  i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int  i13[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float     r10[10]={ 
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8 	};
	float     r11[10]={ 
		2, 4, 2, 4, 1, 3, 3, 3, 2, 2 	};
	float     r10S=2.;
	double    d10[10];
	double    d11[10]={ 
		1, 1, 1, 1, 2, 2, 2, 2, 3, 3 	};
	double    d12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	double    D10S=0.;
	COMPLEX   c10[10];
	COMPLEX   c11[10]={ 
		0, 1, 0, 1, 0, 1, 1, 0, 1, 0,
		    1, 0, 1, 1, 1, 1, 1, 1, 0, 0 	};
	COMPLEX   c12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd10[10];
	COMPLEX16 cd11[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 0, 1, 0, 0, 1 	};
	unsigned long int l10[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	unsigned long int l11[10],l12[10];
	unsigned long int L10S=0;
	long int I10S=0,I11S=0,K=6,N=10,NCWNR=8,CWNR=8,CTR,I;
	float R10S=0.;
	for(I=0;I<10;I++)
	{
		d10[I]=0.;
		c10[I].real=0.;
		c10[I].imag=0.;
		cd10[I].dreal=0.;
		cd10[I].dimag=0.;
		l11[I]=0;
		l12[I]=0;
	}
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10S=I10(I)*I11(I)-I;
			R10S=R10(I)/R11(I);
			I11S=I10S+I10(I);
			D10(I12(I))=(float)(I10S+I11S)+R10(I);
			L10S=R10S > R11(I);
			L11(I)=L10S;
			D10S=D10S+D11(I);
			C10(I13(I)).real=  (  C11(I).real*C12(I).real
			    + C11(I).imag*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
			C10(I13(I)).imag=  (  C11(I).imag*C12(I).real
			    - C11(I).real*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
		}
		else
		{
			I11S=I11(I)+I10(I)+I;
			I10S=I11S*I10(I)-I11S;
			R10S=R10(I)*R11(I);
			L10S=I11S<=I10S;
			L12(I)=L10S;
			D12(K)=D12(K)+R10S;
			CD10(I12(I)).dreal=pow(CD11(I).dreal,I11S);
			CD10(I12(I)).dimag=pow(CD11(I).dimag,I11S);
		}
LBL_10:
		;
	}
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
	printf(" D10S = %g \n",D10S);
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
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
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
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
int COEX()
{
	long int  i10[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	long int  i11[10]={ 
		2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	long int  i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int  i13[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float     r10[10]={ 
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8 	};
	float     r11[10]={ 
		2, 4, 2, 4, 1, 3, 3, 3, 2, 2 	};
	float     r10S=2.;
	double    d10[10];
	double    d11[10]={ 
		1, 1, 1, 1, 2, 2, 2, 2, 3, 3 	};
	double    d12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	double    D10S=0.;
	COMPLEX   c10[10];
	COMPLEX   c11[10]={ 
		0, 1, 0, 1, 0, 1, 1, 0, 1, 0,
		    1, 0, 1, 1, 1, 1, 1, 1, 0, 0 	};
	COMPLEX   c12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd10[10];
	COMPLEX16 cd11[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 0, 1, 0, 0, 1 	};
	unsigned long int l10[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	unsigned long int l11[10],l12[10];
	unsigned long int L10S=0;
	long int I10S=0,I11S=0,K=6,N=10,NCWNR=8,CWNR=8,CTR,I;
	float R10S=0.;
	for(I=0;I<10;I++)
	{
		d10[I]=0.;
		c10[I].real=0.;
		c10[I].imag=0.;
		cd10[I].dreal=0.;
		cd10[I].dimag=0.;
		l11[I]=0;
		l12[I]=0;
	}
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10S=I10(I)*I11(I)-I;
			R10S=R10(I)/R11(I);
			I11S=I10S+I10(I);
			D10(I12(I))=(float)(I10S+I11S)+R10(I);
			L10S=R10S > R11(I);
			L11(I)=L10S;
			D10S=D10S+D11(I);
			C10(I13(I)).real=  (  C11(I).real*C12(I).real
			    + C11(I).imag*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
			C10(I13(I)).imag=  (  C11(I).imag*C12(I).real
			    - C11(I).real*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
		}
		else
		{
			I11S=I11(I)+I10(I)+I;
			I10S=I11S*I10(I)-I11S;
			R10S=R10(I)*R11(I);
			L10S=I11S<=I10S;
			L12(I)=L10S;
			D12(K)=D12(K)+R10S;
			CD10(I12(I)).dreal=pow(CD11(I).dreal,I11S);
			CD10(I12(I)).dimag=pow(CD11(I).dimag,I11S);
		}
LBL_10:
		;
	}
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
	printf(" D10S = %g \n",D10S);
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
	return 0;
}
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
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
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
int OPSEL()
{
	long int  i10[10]={ 
		1, 1, 1, 2, 2, 2, 3, 3, 3, 4 	};
	long int  i11[10]={ 
		2, 2, 2, 2, 2, 2, 2, 2, 2, 2 	};
	long int  i12[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	long int  i13[10]={ 
		1, 2, 3, 4, 5, 6, 7, 8, 9,10 	};
	float     r10[10]={ 
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8 	};
	float     r11[10]={ 
		2, 4, 2, 4, 1, 3, 3, 3, 2, 2 	};
	float     r10S=2.;
	double    d10[10];
	double    d11[10]={ 
		1, 1, 1, 1, 2, 2, 2, 2, 3, 3 	};
	double    d12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	double    D10S=0.;
	COMPLEX   c10[10];
	COMPLEX   c11[10]={ 
		0, 1, 0, 1, 0, 1, 1, 0, 1, 0,
		    1, 0, 1, 1, 1, 1, 1, 1, 0, 0 	};
	COMPLEX   c12[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 	};
	COMPLEX16 cd10[10];
	COMPLEX16 cd11[10]={ 
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		    1, 1, 1, 1, 1, 0, 1, 0, 0, 1 	};
	unsigned long int l10[10]={ 
		1, 1, 1, 1, 1, 0, 0, 0, 0, 0 	};
	unsigned long int l11[10],l12[10];
	unsigned long int L10S=0;
	long int I10S=0,I11S=0,K=6,N=10,NCWNR=8,CWNR=8,CTR,I;
	float R10S=0.;
	for(I=0;I<10;I++)
	{
		d10[I]=0.;
		c10[I].real=0.;
		c10[I].imag=0.;
		cd10[I].dreal=0.;
		cd10[I].dimag=0.;
		l11[I]=0;
		l12[I]=0;
	}
	for(I=1;I<=N;I++)
	{
		if (L10(I)==1)
		{
			I10S=I10(I)*I11(I)-I;
			R10S=R10(I)/R11(I);
			I11S=I10S+I10(I);
			D10(I12(I))=(float)(I10S+I11S)+R10(I);
			L10S=R10S > R11(I);
			L11(I)=L10S;
			D10S=D10S+D11(I);
			C10(I13(I)).real=  (  C11(I).real*C12(I).real
			    + C11(I).imag*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
			C10(I13(I)).imag=  (  C11(I).imag*C12(I).real
			    - C11(I).real*C12(I).imag)
			    / (  C12(I).real*C12(I).real
			    + C12(I).imag*C12(I).imag);
		}
		else
		{
			I11S=I11(I)+I10(I)+I;
			I10S=I11S*I10(I)-I11S;
			R10S=R10(I)*R11(I);
			L10S=I11S<=I10S;
			L12(I)=L10S;
			D12(K)=D12(K)+R10S;
			CD10(I12(I)).dreal=pow(CD11(I).dreal,I11S);
			CD10(I12(I)).dimag=pow(CD11(I).dimag,I11S);
		}
LBL_10:
		;
	}
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
	printf(" D10S = %g \n",D10S);
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
	return 0;
}

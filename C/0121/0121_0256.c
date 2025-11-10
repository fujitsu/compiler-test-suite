#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define N 30
#define O(i,j) o[i-1][j-1]
#define P(i,j) p[i-1][j-1]
#define T(i,j) t[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define S(i) s[i-1]
#define R(i) r[i-1]
#define U(i) u[i-1]
#define A(i,j) a[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define E(i) e[i-1]
double o[N][N],p[N][1],t[N][N],q[3][N],s[N],r[N],u[N];
double a[N][N],f[N][N],b[N][1],e[N];
long int NN=30,NCWNR=10,CTR;
int ALLS (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NN);
int VANDS2 (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NN);
int VANDS1 (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], double u[N], long int *NN);
int INTDT (double a[N][N], double b[N][1], double e[N], double f[N][N], double o[N][N], double p[N][1], double q[3][N], double s[N], double t[N][N], double r[N], double u[N], long int *NN);
int main (void)
{
	long int I,J;
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NN);
	VANDS1(f,t,a,b,e,q,o,s,p,r,u,&NN);
	CTR=0;
	printf(" F =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",F(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" T =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",T(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" A =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",A(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" B =");
	for(I=1;I<=30;I++){
		printf(" %g",B(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" E =");
	for(I=1;I<=30;I++){
		printf(" %g",E(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" Q =");
	for(I=1;I<=30;I++){
		printf(" %g",Q(3,I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" O =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",O(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" S =");
	for(I=1;I<=30;I++){
		printf(" %g",S(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" P =");
	for(I=1;I<=30;I++){
		printf(" %g",P(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R =");
	for(I=1;I<=30;I++){
		for(I=1;I<=30;I++){
			printf(" %g",R(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NN);
	VANDS2(f,t,a,b,e,q,o,s,p,r,&NN);
	CTR=0;
	printf(" F =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",F(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" T =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",T(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" A =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",A(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" B =");
	for(I=1;I<=30;I++){
		printf(" %g",B(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" E =");
	for(I=1;I<=30;I++){
		printf(" %g",E(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" Q =");
	for(I=1;I<=30;I++){
		printf(" %g",Q(3,I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" O =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",O(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" S =");
	for(I=1;I<=30;I++){
		printf(" %g",S(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" P =");
	for(I=1;I<=30;I++){
		printf(" %g",P(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R =");
	for(I=1;I<=30;I++){
		for(I=1;I<=30;I++){
			printf(" %g",R(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NN);
	ALLS(f,t,a,b,e,q,o,s,p,r,&NN);
	CTR=0;
	printf(" F =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",F(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" T =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",T(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" A =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",A(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" B =");
	for(I=1;I<=30;I++){
		printf(" %g",B(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" E =");
	for(I=1;I<=30;I++){
		printf(" %g",E(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" Q =");
	for(I=1;I<=30;I++){
		printf(" %g",Q(3,I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" O =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" %g",O(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" S =");
	for(I=1;I<=30;I++){
		printf(" %g",S(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" P =");
	for(I=1;I<=30;I++){
		printf(" %g",P(I,1));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R =");
	for(I=1;I<=30;I++){
		for(I=1;I<=30;I++){
			printf(" %g",R(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("    ");
			}
		}
	}
	printf("\n");
LBL_99:
	;
	exit (0);
}
#define O(i,j) o[i-1][j-1]
#define P(i,j) p[i-1][j-1]
#define T(i,j) t[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define S(i) s[i-1]
#define R(i) r[i-1]
#define U(i) u[i-1]
#define A(i,j) a[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define E(i) e[i-1]
int INTDT (double a[N][N], double b[N][1], double e[N], double f[N][N], double o[N][N], double p[N][1], double q[3][N], double s[N], double t[N][N], double r[N], double u[N], long int *NN)
{
	long int J,I;
	for(I=1;I<=*NN;I++)
	{
		for(J=1;J<=*NN;J++)
		{
			O(J,I)=(double)(J)+(double)(I)*pow(2.,6.);
			T(J,I)=(double)(J)+(double)(I)*pow(2.,7.);
			A(J,I)=(double)(J)+(double)(I)*pow(2.,8.);
			F(J,I)=2.+(double)(I)*(1.0/pow(2,J));
LBL_11:
			;
		}
		P(I,1)=(double)(I)*0.125;
		B(I,1)=1.;
		E(I)=(double)(I)*pow(2.,6.);
		R(I)=(double)(I)*pow(2.,7.);
		U(I)=(double)(I)*pow(2.,8.);
		S(I)=(double)(I)*pow(2.,9.);
		for(J=1;J<=3;J++)
		{
			Q(J,I)=(double)(J);
LBL_12:
			;
		}
	}
}
#define O(i,j) o[i-1][j-1]
#define P(i,j) p[i-1][j-1]
#define T(i,j) t[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define R(i) r[i-1]
#define S(i) s[i-1]
#define U(i) u[i-1]
#define A(i,j) a[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
int VANDS1 (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], double u[N], long int *NN)
{
	double c[1][30],d[30];
	double AMAX,TMAX,OC,OK;
	double AC,AK;
	long int AMIDX,TMIDX,UMIDX;
	long int J,I,K;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	UMIDX=1;
	AC=0.12121;
	OC=0.12121;
	AK=30.;
	OK=30.;
	for(J=2;J<=*NN-2;J++)
	{
		for(K=2;K<=*NN-2;K++)
		{
			for(I=2;I<=J;I++)
			{
				A(J,1)=F(J,I);
				O(I,1)=T(I,I);
				B(I,1)=0.5+F(J,1);
				P(I,1)=0.5+T(I,1);
				C(1,I)=(double)(int)(fmod((F(J,I)+0.5),AK));
				D(I)=(double)(int)(fmod((F(J,I)+0.5),A(J,1)));
				E(I)=(double)(int)(fmod((A(J,3)+0.5),F(J,3)));
				Q(1,I)=(double)(int)(fmod((T(I,I)+0.5),OK));
				R(I)=(double)(int)(fmod((T(I,3)+0.5),O(I,I)));
				S(I)=(double)(int)(fmod((O(I,I)+0.5),T(I,3)));
				F(*NN,I)=F(*NN,I-1)*B(I,1)+F(*NN-I,I);
				S(I)=S(I-1)*B(I,1)+S(I);
				A(*NN,I)=A(*NN,I-1)*AC+D(I);
				T(*NN,I)=T(*NN,I-1)*OC+R(I);
				if ( AMAX <= Q(1,I) )
				{
					AMAX=Q(1,I);
					AMIDX=I;
				}
				if ( U(UMIDX) < U(I) )UMIDX=I;
				if (TMAX < T(I,1))
				{
					TMAX=T(I,1);
					TMIDX=I;
				}
LBL_10:
				;
			}
		}
	}
	printf("--ALLV ROUTE--");
	printf(" UMIDX = %ld\n",UMIDX);
	printf(" TMAX  = %g\n",TMAX);
	printf(" TMIDX = %ld\n",TMIDX);
	printf(" AMAX  = %g\n",AMAX);
	printf(" AMIDX = %ld\n",AMIDX);
	printf("\n");
}
#define O(i,j) o[i-1][j-1]
#define P(i,j) p[i-1][j-1]
#define T(i,j) t[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define R(i) r[i-1]
#define S(i) s[i-1]
#define A(i,j) a[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
int VANDS2 (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NN)
{
	double AMAX,TMAX,OC,OK;
	double c[1][30],d[30];
	double AC,AK;
	long int AMIDX,TMIDX,RMIDX;
	long int K,J,I;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	RMIDX=1;
	AC=0.12121;
	OC=0.12121;
	AK=30.;
	OK=30.;
	for(J=2;J<=*NN-2;J++)
	{
		for(K=2;K<=*NN-2;K++)
		{
			for(I=2;I<=K;I++)
			{
				A(K,1)=F(I,I);
				O(I,1)=T(I,I);
				B(I,1)=F(1,I);
				P(I,1)=0.5+T(1,I);
				C(1,I)=(double)(int)(fmod((F(I,I)+0.5),AK));
				D(I)=(double)(int)(fmod((F(I,I)+0.5),A(1,I)));
				E(I)=(double)(int)(fmod((A(3,I)+0.5),F(I,3))+0.5);
				Q(1,I)=(double)(int)(fmod((T(I,I)+0.5),OK));
				R(I)=(double)(int)(fmod((T(3,I)+0.5),O(I,I)));
				S(I)=(double)(int)(fmod((O(I,I)+0.5),T(I,I)));
				F(*NN-I,I)=F(*NN-I,I-1)*B(I,1)+F(*NN-I,I);
				S(I)=S(I-1)*B(I,1)+S(I);
				B(*NN-I,1)=B(*NN-I-1,1)*AC+D(I);
				P(*NN-I,1)=P(*NN-I-1,1)*OC+R(I);
				if ( AMAX <= Q(1,I) )
				{
					AMAX=Q(1,I);
					AMIDX=I;
				}
				if ( R(RMIDX) < R(I) ) RMIDX=I;
				T(*NN-I-1,I)=T(*NN-I-1,I-1)*B(I,1)+T(I,1);
				if (TMAX < T(*NN-I-1,I-1))
				{
					TMAX=T(I,1);
					TMIDX=I;
				}
LBL_10:
				;
			}
		}
	}
	printf("--ALLV ROUTE--");
	printf(" RMIDX = %ld\n",RMIDX);
	printf(" TMAX  = %g\n",TMAX);
	printf(" TMIDX = %ld\n",TMIDX);
	printf(" AMAX  = %g\n",AMAX);
	printf(" AMIDX = %ld\n",AMIDX);
	printf("\n");
}
#define O(i,j) o[i-1][j-1]
#define P(i,j) p[i-1][j-1]
#define T(i,j) t[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define R(i) r[i-1]
#define S(i) s[i-1]
#define A(i,j) a[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
int ALLS (double f[N][N], double t[N][N], double a[N][N], double b[N][1], double e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NN)
{
	double AMAX,TMAX,OC,OK;
	double c[1][30],d[30];
	double AC,AK;
	long int AMIDX,TMIDX,RMIDX,K;
	long int J,I;
	K=1;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	RMIDX=1;
	AC=20.;
	OC=20.;
	AK=30.;
	OK=30.;
	for(J=2;J<=*NN-2;J++)
	{
		for(I=2;I<=J;I++)
		{
			A(J,1)=F(3,I);
			O(I,1)=T(2,I);
			B(I,1)=0.5+F(1,I);
			P(I,1)=0.5+T(1,I);
			C(1,I)=(double)(int)(fmod((F(1,I)+0.5),AK));
			D(I)=(double)(int)(fmod((F(I,I)+0.5),A(1,I)));
			K=K+1;
			E(I)=(double)(int)(fmod((A(3,I)+0.5),F(I,3))+0.5);
			Q(1,I)=(double)(int)(fmod((T((K%30)+1,I)+0.5),OK));
			R(I)=(double)(int)(fmod((T(2,I)+0.5),O(I,I)));
			S(I)=(double)(int)(fmod((O(I,I)+0.5),T(I,I)));
			F(*NN-I,I)=F(*NN-I,I)+F(*NN-I,I-1)*B(I,1);
			S((K%30)+1)=S((K%30)+1)*B(I,1)+S((K%30)+1);
			B(*NN-I,1)=B(*NN-I-1,1)*AC+D(I);
			P(*NN-I,1)=P(*NN-I-1,1)*OC+R(I);
			if ( AMAX <=  Q(1,I) )
			{
				AMAX=Q(1,I);
				AMIDX=I;
			}
			if ( R(RMIDX) < R(I) )  RMIDX=I;
			T(*NN-I,I)=T(*NN-I-1,I-1)*B(I,1)+T(I,1);
			if (TMAX < T(*NN-I,I))
			{
				TMAX=T(*NN-I,I);
				TMIDX=I;
			}
LBL_10:
			;
		}
	}
	printf("--ALLV ROUTE--");
	printf(" RMIDX = %ld\n",RMIDX);
	printf(" TMAX  = %g\n",TMAX);
	printf(" TMIDX = %ld\n",TMIDX);
	printf(" AMAX  = %g\n",AMAX);
	printf(" AMIDX = %ld\n",AMIDX);
	printf("\n");
}

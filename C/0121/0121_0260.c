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
float a[N][N],f[N][N],b[N][1],e[N];
int ALLS (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NLI);
int VANDS (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NLI);
int INTDT (float a[N][N], float b[N][1], float e[N], float f[N][N], double o[N][N], double p[N][1], double q[3][N], double s[N], double t[N][N], double r[N], double u[N], long int *NLI);
int ALLV (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], double u[N], long int *NLI);
int main (void)
{
	long int NLI=N,NCWNR=10,CTR,I,J;
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NLI);
	ALLV(f,t,a,b,e,q,o,s,p,r,u,&NLI);
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(J=1;J<=30;J++){
		for(I=1;I<=3;I++){
			printf(" %g",Q(I,J));
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
		printf(" %g",R(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NLI);
	VANDS(f,t,a,b,e,q,o,s,p,r,&NLI);
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(J=1;J<=30;J++){
		for(I=1;I<=3;I++){
			printf(" %g",Q(I,J));
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
		printf(" %g",R(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	INTDT(a,b,e,f,o,p,q,s,t,r,u,&NLI);
	ALLS(f,t,a,b,e,q,o,s,p,r,&NLI);
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(J=1;J<=30;J++){
		for(I=1;I<=3;I++){
			printf(" %g",Q(I,J));
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
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
	for(I=1;I<=N;I++){
		printf(" %g",R(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
LBL_99:
	;
LBL_91:
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
int INTDT (float a[N][N], float b[N][1], float e[N], float f[N][N], double o[N][N], double p[N][1], double q[3][N], double s[N], double t[N][N], double r[N], double u[N], long int *NLI)
{
	long int J,I;
	for(I=1;I<=*NLI;I++)
	{
		for(J=1;J<=*NLI;J++)
		{
			O(J,I)=(double)(I)*0.125+(double)(I);
			T(J,I)=(double)(J)*0.125+(double)(I);
			A(J,I)=(float)(J)*0.125+(float)(I);
			F(J,I)=(float)(J)*0.125+(float)(I);
LBL_11:
			;
		}
		P(I,1)=(double)(I)*0.0625;
		B(I,1)=(float)(I)*pow(2,(-8));
		E(I)=(float)(I)*0.0625;
		R(I)=(double)(I)*0.0625;
		U(I)=(double)(I)*0.0625;
		S(I)=(double)(I)*0.0625;
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
int ALLV (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], double u[N], long int *NLI)
{
	double   AMAX,TMAX,OC,OK;
	float    c[1][30],d[30];
	float    AC,AK;
	long int AMIDX,TMIDX,UMIDX;
	long int I;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	UMIDX=1;
	AC=0.12121;
	OC=0.12121;
	AK=30.;
	OK=30.;
	for(I=2;I<=*NLI-2;I++)
	{
		A(I,1)=(float)(int)(F(I,I));
		O(I,1)=(double)(int)(T(I,I));
		B(I,1)=(F(I,1)>0.0)?
		    (float)(int)(F(I,1)+0.5):(float)(int)(F(I,1)-0.5);
		P(I,1)=(T(I,1)>0.0)?
		    (double)(int)(T(I,1)+0.5):(double)(int)(T(I,1)-0.5);
		C(1,I)=fmod(F(I,I),AK);
		D(I)=fmod(F(I,I),A(I,1));
		E(I)=fmod(A(I,3),F(I,3));
		Q(1,I)=fmod(T(I,I),OK);
		R(I)=fmod(T(I,3),O(I,I));
		S(I)=fmod(O(I,I),T(I,3));
		F(*NLI,I)=F(*NLI,I-1)*B(I,1)+F(*NLI-I,I);
		S(I)=S(I-1)*B(I,1)+S(I);
		A(*NLI,I)=A(*NLI,I-1)*AC+D(I);
		T(*NLI,I)=T(*NLI,I-1)*OC+R(I);
		if ( AMAX <= Q(1,I))
		{
			AMAX=Q(1,I);
			AMIDX=I;
		}
		if (U(UMIDX) < U(I))  UMIDX=I;
		if (TMAX < T(I,1))
		{
			TMAX=T(I,1);
			TMIDX=I;
		}
LBL_10:
		;
	}
	printf(" -- ALLV ROUTE --\n");
	printf("  UNIDX = %ld\n",UMIDX);
	printf("  TMAX  = %g\n",TMAX);
	printf("  TNIDX = %ld\n",TMIDX);
	printf("  AMAX  = %g\n",AMAX);
	printf("  AMIDX = %ld\n",AMIDX);
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
int VANDS (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NLI)
{
	double AMAX,TMAX,OC,OK;
	float c[1][30],d[30];
	float AC,AK;
	long int AMIDX,TMIDX,RMIDX;
	long int I;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	RMIDX=1;
	AC=0.12121;
	OC=0.12121;
	AK=30.;
	OK=30.;
	for(I=2;I<=*NLI-2;I++)
	{
		A(I,1)=(float)(int)(F(I,I));
		O(I,1)=(double)(int)(T(I,I));
		B(I,1)=(F(1,I)>0.0)?
		    (float)(int)(F(1,I)+0.5):(float)(int)(F(1,I)-0.5);
		P(I,1)=(T(1,I)>0.0)?
		    (double)(int)(T(1,I)+0.5):(double)(int)(T(1,I)-0.5);
		C(1,I)=fmod(F(I,I),AK);
		D(I)=fmod(F(I,I),A(1,I));
		E(I)=fmod(A(3,I),F(I,3));
		Q(1,I)=fmod(T(I,I),OK);
		R(I)=fmod(T(3,I),O(I,I));
		S(I)=fmod(O(I,I),T(I,I));
		F(*NLI-I,I)=F(*NLI-I,I-1)*B(I,1)+F(*NLI-I,I);
		S(I)=S(I-1)*B(I,1)+S(I);
		B(*NLI-I,1)=B(*NLI-I-1,1)*AC+D(I);
		P(*NLI-I,1)=P(*NLI-I-1,1)*OC+R(I);
		if (AMAX <= Q(1,I))
		{
			AMAX=Q(1,I);
			AMIDX=I;
		}
		if ( R(RMIDX)  <   R(I) )RMIDX=I;
		T(*NLI-I-1,I)=T(*NLI-I-1,I-1)*B(I,1)+T(I,1);
		if (TMAX < T(*NLI-I-1,I-1))
		{
			TMAX=T(I,1);
			TMIDX=I;
		}
LBL_10:
		;
	}
	printf(" -- ALLV ROUTE --\n");
	printf("  RNIDX = %ld\n",RMIDX);
	printf("  TMAX  = %g\n",TMAX);
	printf("  TNIDX = %ld\n",TMIDX);
	printf("  AMAX  = %g\n",AMAX);
	printf("  AMIDX = %ld\n",AMIDX);
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
int ALLS (float f[N][N], double t[N][N], float a[N][N], float b[N][1], float e[N], double q[3][N], double o[N][N], double s[N], double p[N][1], double r[N], long int *NLI)
{
	double AMAX,TMAX,OC,OK;
	float c[1][30],d[30];
	float AC,AK;
	long int AMIDX,TMIDX,RMIDX;
	long int I,J,K;
	K=1.;
	AMAX=0.;
	TMAX=0.;
	AMIDX=1;
	TMIDX=1;
	RMIDX=1;
	AC=20.;
	OC=20.;
	AK=30.;
	OK=30.;
	for(I=2;I<=*NLI-2;I++)
	{
		A(I,1)=(float)(int)(F(3,I));
		O(I,1)=(double)(int)(T(2,I));
		B(I,1)=(F(1,I)>0.0)?
		    (float)(int)(F(1,I)+0.5):(float)(int)(F(1,I)-0.5);
		P(I,1)=(T(1,I)>0.0)?
		    (double)(int)(T(1,I)+0.5):(double)(int)(T(1,I)-0.5);
		C(1,I)=fmod(F(1,I),AK);
		D(I)=fmod(F(I,I),A(1,I));
		K++;
		E(I)=fmod(A(3,I),F(I,3));
		Q(1,I)=fmod(T(K,I),OK);
		R(I)=fmod(T(3,I),O(I,I));
		S(I)=fmod(O(I,I),T(I,I));
		F(*NLI-I,I)=F(*NLI-I,I)+F(*NLI-I,I-1)*B(I,1);
		S(K)=S(K-1)*B(I,1)+S(K);
		B(*NLI-I,1)=B(*NLI-I-1,1)*AC+D(I);
		P(*NLI-I,1)=P(*NLI-I-1,1)*OC+R(I);
		if (AMAX <= Q(1,I))
		{
			AMAX=Q(1,I);
			AMIDX=I;
		}
		if (R(RMIDX) < R(I))  RMIDX=I;
		T(*NLI-I,I)=T(*NLI-I-1,I-1)*B(I,1)+T(I,1);
		if (TMAX  <   T(*NLI-I,I))
		{
			TMAX=T(*NLI-I,I);
			TMIDX=I;
		}
LBL_10:
		;
	}
	printf(" -- ALLV ROUTE --\n");
	printf("  RNIDX = %ld\n",RMIDX);
	printf("  TMAX  = %g\n",TMAX);
	printf("  TNIDX = %ld\n",TMIDX);
	printf("  AMAX  = %g\n",AMAX);
	printf("  AMIDX = %ld\n",AMIDX);
}

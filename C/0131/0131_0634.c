#include <stdlib.h>
#include <stdio.h>
#include <math.h>


#include "000.h"

float    ga1[20],ga2[20];
float    ga3[20]={
	1., 2., 3., 4., 5., 6., 7., 8., 9.,10.,
	                 11.,12.,13.,14.,15.,16.,17.,18.,19.,20.,};
COMPLEX  gc1[20],gc2[20];
float    gv1,gv2=2.0;
struct stary{
	float x;
	float y;
	long int n;
} s[20];
int sub4(float a1[], float a2[], float a3[], COMPLEX *acv);
int sub3 (float sa[], float sb[], struct stary *s, float *sv1);
int sub2(float aa[], float ab[], COMPLEX ac1[], COMPLEX ac2[], COMPLEX *acv);
int sub1(float ga1[], float ga2[], float ga3[], COMPLEX gc1[], COMPLEX gc2[], float *gv1, float *gv2);
int main (void)
{
	long int i;
	
	float   aa[20],ab[20];
	COMPLEX ac1[20],ac2[20],acv;
	
	static float sa[20],sb[20],sv1;
	acv.real=0.1;
	acv.imag=0.1;
	sv1=1.0;
	gv1=2.0;
	for(i=0;i<20;i++)
	{
		aa[i]=1.;
		ab[i]=2.;
		ac1[i].real=3.;
		ac1[i].imag=4.;
		ac2[i].real=5.;
		ac2[i].imag=6.;
		sa[i]=5.;
		sb[i]=4.;
		ga1[i]=3.3;
		ga2[i]=3.1412;
		gc1[i].real=1.1;
		gc1[i].imag=1.2;
		gc2[i].real=2.2;
		gc2[i].imag=2.1;
		s[i].x=1.1;
		s[i].y=(float)(i);
		s[i].n=i;
	}
	
	sub1(ga1,ga2,ga3,gc1,gc2,&gv1,&gv2);
	printf(" TEST ITEM NO.1 \n");
	printf(" gv1= %g  gv2= %g \n",gv1,gv2);
	
	sub2(aa,ab,ac1,ac2,&acv);
	printf(" TEST ITEM NO.2 \n");
	printf(" acv= (%g,%g) \n",acv.real,acv.imag);
	
	sub3(sa,sb,s,&sv1);
	printf(" TEST ITEM NO.3 \n");
	printf(" sv1= %g \n",sv1);
	
	sub4(aa,&aa[1],&aa[2],&acv);
	printf(" TEST ITEM NO.4 \n");
	printf(" acv= (%g,%g) \n",acv.real,acv.imag);
	exit (0);
}
int sub1(ga1,ga2,ga3,gc1,gc2,gv1,gv2)
float    ga1[],ga2[],ga3[];
COMPLEX  gc1[],gc2[];
float    *gv1,*gv2;
{
	long int i;
	for(i=0;i<20;i++)
	{
		ga1[i]=ga2[i]+ga3[i];
		gc1[i].real=gc1[i].imag+gc2[i].real*gc2[i].imag;
		*gv1+=ga1[i];
		*gv2+=gc1[i].real;
	}
}
int sub2(aa,ab,ac1,ac2,acv)
float    aa[],ab[];
COMPLEX  ac1[],ac2[];
COMPLEX  *acv;
{
	long int i;
	for(i=0;i<20;i++)
	{
		aa[i]=aa[i]+ab[i];
		ac1[i].real=ac1[i].imag+ac2[i].real*ac2[i].imag;
		(*acv).real+=aa[i];
		(*acv).imag+=ac1[i].real;
	}
}
int sub3 (float sa[], float sb[], struct stary *s, float *sv1)
{
	long int i;
	for(i=0;i<20;i++)
	{
		sa[i]=sa[i]+sb[i];
		s[i].x=s[i].x+s[i].y;
		s[i].n=s[i].n+1;
		(*sv1)+=(sa[i]+s[i].x);
	}
}
int sub4(a1,a2,a3,acv)
float    a1[],a2[],a3[];
COMPLEX  *acv;
{
	long int i;
	for(i=0;i<15;i++)
	{
		a1[i]=a2[i]+a3[i];
		(*acv).real+=a1[i];
		(*acv).imag+=a2[i]*a3[i];
	}
}

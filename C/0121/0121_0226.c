#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define M(i) m[i-1]
double        a[10],b[10]={
	1,-2,4,4,-5,-6,10,2,15,2},
c[10];
unsigned long int m[10];
int main()
{
	long int i,j,I,J;
	double  S1,S2=5,S3;
	for(i=0;i< 10;i++){
		a[i]=i+1;
		c[i]=0.0;
		m[i]=1;
	}
	printf("  *****   MAX2/MIN2 *****\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(B(I) > S1) ? B(I):S1;
			C(I)=S1;
		}
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 > B(I)) ? S1:B(I);
			C(I)=S1;
		}
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(B(I) < S1) ? B(I):S1;
			C(I)=S1;
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 < B(I)) ? S1:B(I);
			C(I)=S1;
		}
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 > S1) ? S1:S1;
			C(I)=S1;
		}
LBL_50:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 < S1) ? S1:S1;
			C(I)=S1;
		}
LBL_60:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 > S2) ? S1:S2;
			C(I)=S1;
		}
LBL_70:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S2 > S1) ? S2:S1;
			C(I)=S1;
		}
LBL_80:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 < S2) ? S1:S2;
			C(I)=S1;
		}
LBL_90:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S2 < S1) ? S2:S1;
			C(I)=S1;
		}
LBL_100:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S3=A(I);
			S1=(S3 < S3) ? S3:S3;
			C(I)=S1;
		}
LBL_110:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1 < S1) ? S1:S1;
			C(I)=S1;
		}
LBL_120:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(B(I)>S1)?B(I):S1;
			C(I)=S1;
		}
LBL_130:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1>B(I))?S1:B(I);
			C(I)=S1;
		}
LBL_200:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(B(I)<S1)?B(I):S1;
			C(I)=S1;
		}
LBL_300:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1<B(I))?S1:B(I);
			C(I)=S1;
		}
LBL_400:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1>S1)?S1:S1;
			C(I)=S1;
		}
LBL_500:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1<S1)?S1:S1;
			C(I)=S1;
		}
LBL_600:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1>S2)?S1:S2;
			C(I)=S1;
		}
LBL_700:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S2>S1)?S2:S1;
			C(I)=S1;
		}
LBL_800:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1<S2)?S1:S2;
			C(I)=S1;
		}
LBL_900:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S2<S1)?S2:S1;
			C(I)=S1;
		}
LBL_1000:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S3=A(I);
			S1=(S3<S3)?S3:S3;
			C(I)=S1;
		}
LBL_1100:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (M(I)){
			S1=A(I);
			S1=(S1<S1)?S1:S1;
			C(I)=S1;
		}
LBL_1200:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",C(i));
	}
	printf("\n");
	exit (0);
}

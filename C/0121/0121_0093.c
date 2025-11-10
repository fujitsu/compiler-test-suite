#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IV11(i) iv11[i-1]
#define IV12(i) iv12[i-1]
#define DV11(i) dv11[i-1]
#define RV21(i) rv21[i-1]
#define CV21(i) cv21[i-1]
#define RV31(i) rv31[i-1]
#define RV32(i) rv32[i-1]
#define DV31(i) dv31[i-1]
long int iv11[10]={
	1,2,3,4,5,6,7,8,9,10};
long int iv12[10]={
	1,9,8,7,6,5,4,3,2,1};
double dv11[10]={
	3.0,3.0,3.0,3.0,3.0,2.5,2.5,2.5,2.5,2.5};
float rv21[10]={
	-1.0,0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0};
COMPLEX16 cv21[2],CS21={
	0.0,2.0};
float rv31[10]={
	4.0,4.0,4.0,-1.0,-1.0,-1.0,-1.0-1.0,5.0,5.0};
float rv32[10]={
	2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0};
double dv31[10]={
	1.0,8.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0};
COMPLEX8 CS31={
	1.0,1.0};
int main()
{
	long int IS11=2,IS12=10;
	float RS11=0.0,RS12=2.0,RS13=3.0,RS14=0.0;
	double DS20,DS21=1.0,DS22=0.0,DS23=0.0,DS24=0.0;
	unsigned long int LS31,LS32=0;
	float RS31=10.0,RS32=3.0,RS33,RS34=0.0,RS35=1.0,RS36=0.0;
	long int i,IS13;
	double DS31=4.0;
	cv21[0].dreal=0.0;
	cv21[0].dimag=0.0;
	cv21[1].dreal=0.0;
	cv21[1].dimag=0.0;
	for(i=1;i<=10;i++)
	{
		RS11=(RS11 > RS12) ? RS11:RS12;
		IS11=(IV11(3) < IS11) ? IV11(3):IS11;
		RS13=((float)(DV11(i))<RS13) ? (float)(DV11(i)):RS13;
		RS13=(RS12<RS13) ? RS12:RS13;
		IV11(2)=(IV11(2)>(IV11(1)+IV12(i))) ? IV11(2):(IV11(1)+IV12(i));
		IS12=(IV11(2)>IS12) ? IV11(2):IS12;
		IS13=(DV11(i)/2.0)-3;
		RS14=(IS13 > RS14) ? IS13:RS14;
LBL_100:
		;
	}
	printf("  ****  **** (1) **** \n");
	printf(" %g ",RS11);
	printf(" %g ",RS13);
	printf(" %g ",RS14);
	printf(" %ld ",IS11);
	printf(" %ld ",IS12);
	printf("\n");
	for(i=1;i<=10;i++)
	{
		DS20=RV21(i)-DS22;
		CV21(1).dreal=CV21(1).dreal+(CS21.dreal*RV21(11-i)-DS21);
		CV21(1).dimag=CV21(1).dimag+(CS21.dimag*RV21(11-i)-DS21);
		if (0 <= DS20)  DS22 = RV21(i);
		DS20=DS23-RV21(i);
		if (0 >= DS20)  DS23 = RV21(i);
		CV21(2).dreal=CV21(2).dreal+CS21.dreal;
		CV21(2).dimag=CV21(2).dimag+CS21.dimag;
		DS20=DS24-RV21(i);
		if (DS20 <= 0)  DS24 = RV21(i);
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	for(i=1;i<=2;i++){
		printf(" (%g,%g) ",CV21(i).dreal,CV21(i).dimag);
	}
	printf("\n");
	printf(" %g %g %g ",DS22,DS23,DS24);
	printf("\n");
	for(i=1;i<=10;i++)
	{
		DV31(10)=RV31(i)+((RV31(i)*RV31(i))*RV32(i)/DV31(11-i)
		    +(RV31(i)*RS32)/DS31-(RS31*(float)(DV31(11-i))))+DV31(10);
		RS33=fabs(CS31.real*DV31(i));
		if (RS33 >  RS34)RS34=RS33;
		if (RS35 >  RS36)RS36=RS35;
LBL_300:
		;
	}
	printf("  ****  **** (3) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV31(i));
	}
	printf("\n");
	printf(" %g ",RS34);
	printf(" %g ",RS36);
        printf("\n");
	exit (0);
}

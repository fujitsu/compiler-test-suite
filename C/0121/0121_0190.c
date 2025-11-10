#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define L14(i) l14[i-1]
#define L15(i) l15[i-1]
#define L16(i) l16[i-1]
#define L17(i) l17[i-1]
#define L18(i) l18[i-1]
#define L19(i) l19[i-1]
#define L20(i) l20[i-1]
#define L21(i) l21[i-1]
#define L22(i) l22[i-1]
#define L23(i) l23[i-1]
#define L24(i) l24[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define L30(i) l30[i-1]
#define L31(i) l31[i-1]
#define L32(i) l32[i-1]
#define L33(i) l33[i-1]
#define I30(i) i30[i-1]
#define RD30(i) rd30[i-1]
#define RD31(i) rd31[i-1]
#define RD32(i) rd32[i-1]
#define CD30(i) cd30[i-1]
unsigned long int l10[10],l11[10],l12[10],l13[10],l14[10],l15[10],l16[10],
l17[10],l18[10],l19[10],l20[10],l21[10],l22[10],l23[10],
l24[10];
float     r10[10],r11[10];
COMPLEX8  c10[10],
c11[10]={
	1.5,2,2,2,3.5,4,4.5,5,5,5,6,6,7.5,8,8.5,9,9.5,10,10,10};
unsigned long int l30[10],l31[10],l32[10],l33[10];
long int  i30[10];
double    rd30[10],rd31[10]={
	2,3,4,6,10,3,12,10,14,10},
rd32[10]={
	2,0,3,0,4,0,5,0,6,0};
COMPLEX16 cd30[10];
int main()
{
	unsigned long int L11V,L12V;
	long int N=10,i,j,I,J;
	for(i=0;i< 10;i++){
		l10[i]=(fmod((i+1),2))?1:0;
		r10[i]=5.0+(i+1)*0.1;
		r11[i]=5.0+(i+1)*0.1;
		c10[i].real=(i+1);
		c10[i].imag=(i+1);
		rd30[i]=(i+1)*10;
		cd30[i].dreal=(i+1);
		cd30[i].dimag=(i+1);
	}
	printf("  *****  *****  DATA TYPE LOGICAL*4\n");
	printf("  ----- LOOP 1 ----- LOGICAL OPERATION\n");
	for(I=1;I<=N;I++)
	{
		L11V=L10(I);
		L12V=L11V;
		L11(I)=1;
		L12(I)=L11V;
		L13(I)=L12(I);
		L14(I)=(1 && L11V)?1:0;
		L15(I)=(L11V || 0)?1:0;
		L16(I)=(1==L13(I))?1:0;
		L17(I)=(L12(I)!=L16(I))?1:0;
		L18(I)=(!L16(I) && !L17(I))?1:0;
		L19(I)=(L11V || !L12V)?1:0;
		L20(I)=(6.0 >  5.9)?1:0;
		L21(I)=(6.1 >= R10(I))?1:0;
		L22(I)=(R10(I) != 5.8)?1:0;
		L23(I)=(R10(I)==R11(I))?1:0;
		L24(I)=(((C10(I).real-C10(I).imag) == (C11(I).real-0.5)) &&
		    ((C10(I).real+C10(I).imag) == (C11(I).real-1)))?1:0;
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu   ",L11(i));
		printf(" %lu   ",L12(i));
		printf(" %lu   ",L13(i));
		printf(" %lu   ",L14(i));
		printf(" %lu   ",L15(i));
		printf(" %lu \n",L16(i));
		printf(" %lu   ",L17(i));
		printf(" %lu   ",L18(i));
		printf(" %lu   ",L19(i));
		printf(" %lu \n",L20(i));
	}
	printf("  ----- LOOP 2 ----- CONVERTION OF VT,MT\n");
	for(I=1;I<=N;I++)
	{
		L30(I)=(5.0 < RD30(I)/RD31(I))?1:0;
		I30(I)=I;
		L31(I)=1;
		L32(I)=((CD30(I).dreal==RD32(I)) && (CD30(I).dimag==2.0*RD32(I)))?1:0;
		L33(I)=(L31(I) && L32(I))?1:0;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu   ",L30(i));
		printf(" %ld   ",I30(i));
		printf(" %lu   ",L31(i));
		printf(" %lu   ",L32(i));
		printf(" %lu \n",L33(i));
	}
	exit (0);
}

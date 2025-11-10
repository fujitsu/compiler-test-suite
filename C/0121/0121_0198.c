#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
unsigned long int l11[10]={
	1,1,0,0,1,1,0,0,1,1};
unsigned long int i10[10]={
	0,0,0,0,0,0,0,0,0,0};
unsigned long int i11[10]={
	0,0,0,0,0,0,0,0,0,0};
unsigned long int i12[10]={
	0,0,0,0,0,0,0,0,0,0};
unsigned long int l10[10]={
	0,0,0,0,0,0,0,0,0,0};
unsigned long int l12[10]={
	0,0,0,0,0,0,0,0,0,0};
unsigned long int l13[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	long int N=10,I;
	long int IV10,LV10,LV11;
	float RV10;
	printf(" *****  ***** DATA REFFERENCE\n");
	printf(" ----- LOOP 1 -----\n");
	for(I=1;I<=N;I+=2)
	{
		IV10=I;
		if ( I > 5 )
		{
			LV10 = 1;
		}
		else
		{
			LV10 = 0;
		}
		RV10=IV10;
		if ( LV10 == 1 )
		{
			LV11=1;
		}
		else
		{
			LV11=0;
		}
		I10(I)=IV10;
		if ( LV10 == 1 && LV11 == 1 )
		{
			L10(I)=1;
		}
		else
		{
			L10(I)=0;
		}
		IV10=IV10+I10(I);
		if ( LV10 == 1  || LV11 ==1 )
		{
			LV10=1;
		}
		else
		{
			LV10=0;
		}
		I11(I)=sqrt((float)(IV10));
		I12(I)=(int)(0.5+pow(I11(I),(IV10-I)));
		if ( LV10 == ( L10(I) || ( LV10 && LV11 ) ) )
		{
			LV11=1;
		}
		else
		{
			LV11=0;
		}
		L12(I)=LV11;
		L13(I)=LV10;
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" I10=% ld ",I10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" L10 =  %ld ",L10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" I11 =  %ld ",I11(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" I12 =  %ld ",I12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" L12 =  %ld ",L12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" L13 =  %ld ",L13(I));
	}
	printf(" \n");
	printf("\n  ----- LOOP 2 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( L10(I) ==1)
		{
			IV10=I;
			if ( I > 5 )
			{
				LV10 = 1;
			}
			else
			{
				LV10 = 0;
			}
			RV10=IV10;
			if ( LV10 == 1 )
			{
				LV11=1;
			}
			else
			{
				LV11=0;
			}
			I10(I)=IV10;
			if ( LV10 == 1 && LV11 == 1 )
			{
				L10(I)=1;
			}
			else
			{
				L10(I)=0;
			}
			IV10=IV10+I10(I);
			if ( LV10 ==1  || LV11 ==1 )
			{
				LV10=1;
			}
			else
			{
				LV10=0;
			}
			I11(I)=sqrt((float)(IV10));
			I12(I)=(int)(0.5+pow(I11(I),(IV10-I)));
			if ( LV10 == ( L10(I) || ( LV10 && LV11 ) ) )
			{
				LV11=1;
			}
			else
			{
				LV11=0;
			}
			L12(I)=LV11;
			L13(I)=LV10;
		}
LBL_20:
		;
	}
	for(I=1;I<=10;I++){
		printf(" I10 =  %ld ",I10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++){
		printf(" L10 =  %ld ",L10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++){
		printf(" I11 =  %ld ",I11(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++){
		printf(" I12 =  %ld ",I12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++){
		printf(" L12 =  %ld ",L12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++){
		printf(" L13 =  %ld ",L13(I));
	}
        printf("\n");
	exit (0);
}

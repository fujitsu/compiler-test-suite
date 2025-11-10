#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub1 (long int *n, double *dval, long int idim1[], long int idim2[], long int idim3[]);
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define QA10(i) qa10[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define DCOM1(i,j) dcom1[i-1][j-1]
#define DCOM2(i,j) dcom2[i-1][j-1]
#define DCOM3(i,j) dcom3[i-1][j-1]
long int id10[20],id20[20],id30[20];
double da10[20],da20[20],da30[20],da40[20];
long double qa10[20];
unsigned long int ld10[20],ld20[20];
double dcom1[20][20],dcom2[20][20],dcom3[20][20];
int main (void)
{
	long int i,ival,icnt=0,j,n;
	double dval1,dx,dy,dval3=0.0,dif,dval2;
	for(i=1;i<=20;i++){
		id10[i-1]=2;
		id20[i-1]=4;
		id30[i-1]=6;
		da10[i-1]=1.0;
		da20[i-1]=2.0;
		da30[i-1]=3.0;
		da40[i-1]=4.0;
		qa10[i-1]=1.0;
		ld10[i-1]=0;
		ld20[i-1]=0;
	}

	for(i=1;i<=20;i++)
	{
		if ( i <= 10) ld10[i*2-2]=1;
		for(j=1;j<=20;j++)
		{
			dcom1[i-1][j-1]=da10[j-1]*2.0;
			dcom2[i-1][j-1]=da20[j-1]-1.0;
			dcom3[i-1][j-1]=da30[j-1]+1.0;
		}
	}
	dval1=0.0;
	for(i=2;i<=20;i++)
	{
		dx=da10[i-1]-da30[i-1];
		dy=da20[i-1]+da40[i-1];
		dval3=dval3+dx+dy;
		dif=dval1-da40[i-1];
		if ( dif  >   0.0 ) continue;
		dval1=da40[i-1];
		ival=i;
		icnt=icnt+1;
		ld20[i-1]=1;
		dval2=0.0;
		for(j=1;j<=20;j++)
		{
			if ( dval2 < dcom1[j-1][i-1]) dval2=dcom1[i-1][j-1];
			dcom1[i-2][j-1]=dcom2[i-1][j-1]-dcom3[j-1][i-1];
			dcom2[j-1][i-1]=qa10[j-1]+dcom3[i-1][j-1];
		}
		n=i;
		sub1(&n,&dval2,&id10[0],&id20[0],&id30[0]);
		for(j=1;j<=n;j++)
		{
			da10[i-1]=da10[i-1]+da20[j-1]*da30[j-1]-da40[j-1]*qa10[j-1];
		}
		printf("  ****  *** NO.1 **** \n");
		printf("da10[%ld]= %g \n",i,da10[i-1]);
	}
	printf("  ****  *** NO.2 **** ");
	printf(" dval1 = %g, ival = %ld, icnt = %ld \n",dval1,ival,icnt);
	for(i=1;i<=10 ;i++)
	{
		for(j=1;j<=10 ;j++)
		{
			printf("dcom1[%ld][%ld]= %g \n",i,j,dcom1[i-1][j-1]);
			printf("dcom2[%ld][%ld]= %g \n",i,j,dcom2[i-1][j-1]);
		}
	}
	printf("  dval3 =  %g \n",dval3);
	exit (0);
}
#define IDIM1(i) idim1[i-1]
#define IDIM2(i) idim2[i-1]
#define IDIM3(i) idim3[i-1]
int sub1 (long int *n, double *dval, long int idim1[], long int idim2[], long int idim3[])
{
	long int i,j,ix,iy,k;
	for(i=1;i<=20;i++)
	{
		for(j=1;j<=20;j++)
		{
			dcom1[i-1][i-1]=dcom2[i-1][j-1]+dcom1[i-1][i-1]-dcom3[j-1][i-1]+*dval;        
		}
	}
	for(i=1;i<=20;i++)
	{
		if(dcom1[i-1][i-1] > *dval) *dval=dcom1[i-1][i-1];
	}
	printf("  ****  *** SUB1 **** ");
	printf("  dval = %g \n",*dval);
	for(k=2;k<=*n;k++)
	{
		if((idim1[k-1]>=idim2[k-1]) && (idim1[k-1]>=idim3[k-1])) ix=idim1[k-1];
		else if((idim2[k-1]>=idim1[k-1]) && (idim2[k-1]>=idim3[k-1])) ix=idim2[k-1];    
		else if((idim3[k-1]>=idim1[k-1]) && (idim3[k-1]>=idim2[k-1])) ix=idim3[k-1];    
		if((idim1[k-1]<=idim2[k-1]) && (idim1[k-1]<=idim3[k-1])) iy=idim1[k-1];
		else if((idim2[k-1]<=idim1[k-1]) && (idim2[k-1]<=idim3[k-1])) iy=idim2[k-1];    
		else if((idim3[k-1]<=idim1[k-1]) && (idim3[k-1]<=idim2[k-1])) iy=idim3[k-1];       
		idim1[0]=idim1[0]+ix+iy;
		idim2[k-1]=ix;
		idim3[k-1]=iy;
	}
	printf("  ****  *** SUB1 *** NO.2 *** ");
	printf(" idim1[0]=  %ld \n",idim1[0]);
	for(k=1;k<=*n;k++)
	{
		printf("idim2[%ld]= %ld  ",k,idim2[k-1]);
		printf("idim3[%ld]= %ld \n",k,idim3[k-1]);
	}
	return 0;
}

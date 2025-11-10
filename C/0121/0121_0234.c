#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define CD40(i) cd40[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define LD40(i) ld40[i-1]
int main()
{
	long int I,N,J,i,n;
	double DX,DY,DZ,DW;
	unsigned long int LA;

	double da10[20],da20[20],da30[20],da40[20];
	COMPLEX16 cd10[20],cd20[20],cd30[20],cd40[20];
	unsigned long int ld10[20],ld20[20],ld30[20],ld40[20];

	for(i=1;i<=20;i++){
		DA10(i)=1.0;
	}

	for(i=1;i<=20;i++){
		DA20(i)=2.0;
	}

	for(i=1;i<=20;i++){
		DA30(i)=3.0;
	}

	for(i=1;i<=20;i++){
		DA40(i)=4.0;
	}

	for(i=1;i<=20;i++)
	{
		CD10(i).dreal=2.0;
		CD10(i).dimag=1.0;
	}

	for(i=1;i<=20;i++)
	{
		CD20(i).dreal=1.0;
		CD20(i).dimag=4.0;
	}

	for(i=1;i<=20;i++)
	{
		CD30(i).dreal=3.0;
		CD30(i).dimag=4.0;
	}

	for(i=1;i<=20;i++)
	{
		CD40(i).dreal=1.0;
		CD40(i).dimag=2.0;
	}

	for(i=1;i<=20;i++)
	{
		LD10(i)=LD20(i)=LD30(i)=LD40(i)=0.0;
	}

	LA=0;

	for(I=2;I<=20;I++)
	{
		DA10(I)=DA40(I)/DA20(I)*DA30(I);
		DX=DA10(I)-(CD10(I).dreal);
		DY=DA10(I)/(CD40(I).dimag);
		if ( DX  >   DY )
		{
			LD10(I)=(!LD20(I))||((LD30(I)));
			DZ=DA20(I)*sqrt((CD30(I).dimag));
			DW=DX-DZ;
			if ( DW <= 0 ){
				LD20(I)=1;
				DA30(I)=(DX-DZ)*DA30(I);
				goto LBL_20;
			}
			else {
				LD30(I)=(!LD40(I-1));
				DA40(I)=(DZ-DX)*2.0 +DA40(I);
LBL_20:
				;
			}
			DX=(DX>DZ) ? DX:DZ;
		}
		CD10(I).dreal=(double)(DX);
		CD10(I).dimag=(double)(DY);
		CD20(I).dreal=CD20(I).dreal-CD10(I).dreal;
		CD20(I).dimag=CD20(I).dimag+CD10(I).dimag;
	}
	printf("  ****  ** NO.1 **** \n");

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA10(%ld))  %g ",i,DA10(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA30(%ld))  %g ",i,DA30(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA40(%ld))  %g ",i,DA40(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD10(%ld)) ( %g,%g)",i,(CD10(i).dreal),(CD10(i).dimag));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD10(%ld))  %lu",i,LD10(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD20(%ld))  %lu",i,LD20(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD30(%ld))  %lu",i,LD30(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}
	for(J=1;J<=10;J++)
	{
		N=J+10;
		LD40(J)=(!LD10(J))||(LD20(N));
		DX=(DA10(J)>DA20(J)) ? DA10(J):DA20(J);
		DY=(DA10(J)>DA30(J)) ? DA10(J):DA30(J);
		if ( DX  ==  DY )
		{
			LA=(!LD30(J))||(LD40(N));
			if ( LD40(J) ==1)
			{
				DA20(J)=DA10(J)-DA30(N);
			}
			else
			{
				DA20(N)=DA10(J)-DA40(N);
			}
			LD10(J)=LD20(J)&&LA;
			if ( J  >   5 )
			{
				LD20(J)=!LA;
				DX=DA20(J)*DA30(N);
				DY=(double)(int)(0.5+(sqrt(fabs(DX))));
			}
		}
		CD20(J).dreal=(double)(DX);
		CD20(J).dimag=(double)(DY);
		CD30(J).dreal=(double)(DY)+CD10(N).dreal;
		CD30(J).dimag=(double)(DX)+CD10(N).dimag;
		if ( N  >   15 ){
			CD40(N).dreal=CD10(J).dreal-CD20(N).dreal+CD30(J).dreal;
			CD40(N).dimag=CD10(J).dimag-CD20(N).dimag+CD30(J).dimag;
			LD40(J)=LD10(J)||LD20(J)||LD30(N);
		}
	}
	printf("  ****  *** NO.2 *** \n");

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD10(%ld))  %lu",i,LD10(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (DA20(%ld))  %g ",i,DA20(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD20(%ld)) (%g,%g)",i,(CD20(i).dreal),(CD20(i).dimag));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD20(%ld))  %lu",i,LD20(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD30(%ld))  (%g,%g)",i,(CD30(i).dreal),(CD30(i).dimag));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (LD40(%ld))  %lu",i,LD40(i));
		n=i%4;
		if( n == 0 )  printf("\n");
	}

	printf("\n");
	for(i=1;i<=20;i++){
		printf("  (CD40(%ld))  (%g,%g)",i,(CD40(i).dreal),(CD40(i).dimag));
		n=i%4;
		if( n == 0 )  printf("\n");
	}
	exit (0);
}

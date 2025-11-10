#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define LD40(i) ld40[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
long int id10[20],id20[20],id30[20];
double da10[20],da20[20],da30[20],da40[20];
unsigned long int ld10[20],ld20[20],ld30[20],ld40[20];
int main()
{
	long int i,j,IVAL,n=0;
	double DVAL,DX,DY,DZ;

	for(i=0;i< 20;i++){
		da10[i]=1.0;
		da20[i]=2.0;
		da30[i]=4.0;
		da40[i]=3.0;
	}

	for(i=0;i< 20;i++){
		ld10[i]=ld20[i]=ld30[i]=ld40[i]=0;
	}

	for(i=0;i< 20;i++){
		id10[i]=1.0;
		id30[i]=2.0;
	}

	for(i=0;i< 10;i++){
		id20[i]=1.0;
	}

	for(i=10;i<20;i++){
		id20[i]=2.0;
	}
	DVAL=0.0;
	for(i=5;i<=15;i+=2)
	{
		DX=DA10(i)+DA20(i)+DA30(i);
		DY=DA10(i)+DA40(i)/DA20(i);
		DZ=(float)(ID20(i)*i);
		for(j=20;j>=2;j-=1)
		{
			IVAL=ID10(j)+j;
			DVAL=DVAL+(double)(int)(0.5+sqrt(DA40(j)));
			DA10(j)=(double)(int)(0.5+DX/DA10(j))-DA40(j);
			if ( DX - DY >0){
				LD10(j)=1;
				DA20(j)=fabs(DX-DY)+DA30(j);
			}
			else{
				LD20(j)=1;
				DA30(j)=DZ+(DA20(j) < DA20(j-1)) ? DA20(j):DA20(j-1);
			}
			if ( DA10(j)  >=  DA20(j) ) LD30(j)=1;
			else{
				if ( i  <=  10 ){
					LD40(j)=!LD10(j)||LD20(j);
					DA40(j)=(DA40(j)>DX) ? DA40(j):DX;
					DA40(j)=(DA40(j)>DY) ? DA40(j):DY;
					DA40(j)=(DA40(j)>DZ) ? DA40(j):DZ;
				}
				else{
					LD40(j)=LD10(j)||!LD20(j);
					DA40(j)=(DA40(j-1) < DA30(j-1)) ? DA40(j-1):DA30(j-1);
				}
			}
		}
		ID10(i)=IVAL;
		ID20(i)=ID30(i)+ID20(i);
		ID30(i)=(int)(0.5+DVAL);
		if ( LD10(i) && LD20(i) || LD10(i) && LD40(i) ){
			LD30(i)=1;
			DA10(1)=DA10(1)+DX+DY-DZ;
		}
	}
	printf("  ***  *** NO.1 *** \n");

	for(i=1;i<=20;i++){
		printf(" (DA10(%ld)) %g ",i,DA10(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (ID10(%ld)) %ld ",i,ID10(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (LD10(%ld)) %lu ",i,LD10(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (DA20(%ld)) %g ",i,DA20(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (LD20(%ld)) %lu ",i,LD20(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (DA30(%ld)) %g ",i,DA30(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (ID30(%ld)) %ld ",i,ID30(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (LD30(%ld)) %lu ",i,LD30(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (DA40(%ld)) %g ",i,DA40(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	for(i=1;i<=20;i++){
		printf(" (LD40(%ld)) %lu ",i,LD40(i));
		n=i%4;
		if( n == 0 ) printf("\n");
	}
	printf("\n");

	exit (0);
}

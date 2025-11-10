#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define D1(i) d1[i-1]
#define D2(i) d2[i-1]
#define D3(i) d3[i-1]
#define E1(i) e1[i-1]
#define E2(i) e2[i-1]
#define E3(i) e3[i-1]
#define N1(i) n1[i-1]
#define L1(i) l1[i-1]
double d1[11],d2[11],d3[11];
float e1[11],e2[11],e3[11];
long int n1[10];
unsigned long int l1[10];
int main()
{
	double maxmin;
	float ES1;
	long int I,J;
	int k;
	ES1=-1.0;
	J=2;
	for(k=0;k< 10;k++){
		n1[k]=l1[k]=0;
	}
	for(k=0;k< 11;k++){
		d1[k]=d3[k]=e2[k]=3.5;
		d2[k]=e1[k]=e3[k]=-1.0;
	}
	for(I=1;I<=10;I++)
	{
		if ((I%2)!=0)
		{
			D1(I)=D2(I)*E1(I)+1.5;
			D2(I+1)=E2(I)/E1(I);
			maxmin=D2(I+1)*D2(I+1);
			if(maxmin<(double)ES1)maxmin=(double)ES1;
			if(maxmin<D1(I))maxmin=D1(I);
			ES1=(float)maxmin;
			if ((I%2) == 1)
			{
				J=J+1;
LBL_101:
				;
				N1(I)=J;
				D3(I)=D1(I)/2.0-J;
				E3(I)=I-3;
			}
		}
LBL_110:
		;
	}
	for(k=1;k<=6;k++)printf("\n D1(%d)=%g",k,D1(k));
	for(k=7;k<=11;k++)printf("\n D1(%d)=%g",k,D1(k));
	for(k=1;k<=6;k++)printf("\n D2(%d)=%g",k,D2(k));
	for(k=7;k<=11;k++)printf("\n D2(%d)=%g",k,D2(k));
	for(k=1;k<=6;k++)printf("\n D3(%d)=%g",k,D3(k));
	for(k=7;k<=11;k++)printf("\n D3(%d)=%g",k,D3(k));
	for(k=1;k<=5;k++)printf("\n N1(%d)=%ld",k,N1(k));
	for(k=6;k<=10;k++)printf("\n N1(%d)=%ld",k,N1(k));

	printf("\n ES1=%g",ES1);
	for(k=1;k<=6;k++)printf("\n E3(%d)=%g",k,E3(k));
	for(k=7;k<=11;k++)printf("\n E3(%d)=%g",k,E3(k));
	printf("\n J=%ld",J);

	for(I=1;I<=10;I++)
	{
		if ((I%2)!=0)
		{
			maxmin=D2(I);
			if(maxmin>(double)ES1)maxmin=(double)ES1;
			if(maxmin>D1(I))maxmin=D1(I);
			ES1=(float)maxmin;
			D1(I)=D2(I)*E1(I)+1.5;
			D2(I+1)=E2(I)/E1(I);
			if ((I%2) == 1)
			{
				J=J-1;
				N1(J)=J;
				D3(J)=D1(I)/2.0;
				E3(I)=I-3;
			}
		}
LBL_210:
		;
	}
	for(k=1;k<=6;k++)printf("\n D1(%d)=%g",k,D1(k));
	for(k=7;k<=11;k++)printf("\n D1(%d)=%g",k,D1(k));
	for(k=1;k<=6;k++)printf("\n D2(%d)=%g",k,D2(k));
	for(k=7;k<=11;k++)printf("\n D2(%d)=%g",k,D2(k));
	for(k=1;k<=6;k++)printf("\n D3(%d)=%g",k,D3(k));
	for(k=7;k<=11;k++)printf("\n D3(%d)=%g",k,D3(k));
	for(k=1;k<=5;k++)printf("\n N1(%d)=%ld",k,N1(k));
	for(k=6;k<=10;k++)printf("\n N1(%d)=%ld",k,N1(k));

	printf("\n ES1=%g",ES1);
	for(k=1;k<=6;k++)printf("\n E3(%d)=%g",k,E3(k));
	for(k=5;k<=11;k++)printf("\n E3(%d)=%g",k,E3(k));
	printf("\n J=%ld",J);
	for(k=1;k<=5;k++)printf("\n L1(%d)=%ld",k,L1(k));
	for(k=6;k<=10;k++)printf("\n L1(%d)=%ld",k,L1(k));
        printf("\n");
	exit (0);
}

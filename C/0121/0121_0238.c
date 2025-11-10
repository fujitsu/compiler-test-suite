#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int INIT( int N);
#define RV01(i) rv01[i+9]
#define LV01(i) lv01[i-1]

float rv01[20];
long int lv01[10];
int main()
{
	long int i,j;
	float RS;


	INIT(1);
	for(i=1;i<=10;i++)
	{
		if(i != 5) RV01(LV01(i))=(float)(pow(((float)(i)/2.0+10.0),3.0));
	}


	INIT(2);
	j=12;
	for(i=1;i<=10;i++)
	{
		j=j-1;
		if ((0 <  LV01(i)) &&  (LV01(i) <= 10)){
			RV01(LV01(i))=(float)(sqrt(i/4.0*i)*3+i*j);
		}
	}


	INIT(3);
	for(i=1;i<=10;i++)
	{
		if (LV01(i) <  11) RV01(LV01(i))=RV01(i)/2.0*3-(float)(i);
	}


	INIT(4);
	for(i=1;i<=10;i++)
	{
		RS=(float)(i)*3.0;
		if (i != 10) RV01(LV01(i)+1)=RV01(LV01(i)+1)*2+RS+(float)(i+1);
		if (i == 10) RV01(LV01(i)-9)=-RV01(LV01(i)-9)*2-RS;
	}


	INIT(5);
	exit (0);
}
#define LV01(i) lv01[i-1]
#define LV02(i) lv02[i-1]
#define RV01(i) rv01[i+9]

union {
	struct {
		float rv01[20];
		long int lv01[10];
	}s1;

	struct {
		float dum[20];
		long int lv02[10];
	}s2;

}uare;

int INIT( int N)
{
	long int i,n;


	if (N != 1)
	{
		printf("   ****  **** NO. %d \n",N);
		for(i=1;i<=10;i++){
			printf("  RV01(%ld) %g ",i,uare.s1.RV01(i));
			n=i%4;
			if(n == 0) printf("\n");
		}
		printf("\n");

		for(i=1;i<=10;i++){
			printf("  LV01(%ld)=%ld ",i,uare.s1.LV01(i));
			n=i%4;
			if(n == 0) printf("\n");
		}
		printf("\n");
	}


	if (N == 1)
	{
		for(i=1;i<=10;i++)
		{
			uare.s1.LV01(i)=11-i;
			uare.s1.RV01(i-10)=0.0;
			uare.s1.RV01(i)=0.0;
		}
		uare.s2.LV02(6)=16;
	}


	if (N == 2)
	{
		for(i=1;i<=10;i++)
		{
			uare.s1.LV01(i)=(i-2)*2;
			uare.s1.RV01(i)=0.0;
		}
	}


	if (N == 3)
	{
		for(i=1;i<=10;i++)
		{
			uare.s1.LV01(i)=i*2;
			uare.s1.RV01(i)=(float)(i-3.0);
		}
	}


	if (N == 4)
	{
		for(i=1;i<=10;i++)
		{
			uare.s1.LV01(i)=i;
			uare.s1.RV01(i)=(float)(i);
		}
	}
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int INIT(float dv12[16][1], float dv13[16][1], COMPLEX8 cv12[16][1], COMPLEX8 cv13[16][1]);
#define DV11(i,j) dv11[i-1][j-1]
#define DV12(i,j) dv12[i-1][j-1]
#define DV13(i,j) dv13[i-1][j-1]
#define CV11(i,j) cv11[i-1][j-1]
#define CV12(i,j) cv12[i-1][j-1]
#define CV13(i,j) cv13[i-1][j-1]
#define LV21(i) lv21[i-1]
#define RV21(i) rv21[i-1]
#define IV21(i) iv21[i-1]
#define IV31(i) iv31[i-1]
#define DV31(i) dv31[i-1]
float dv11[4][4];
COMPLEX8 cv11[4][4];
unsigned long int lv21[10];
float rv21[10];
long int iv21[10];
long int iv31[10];
double dv31[10];
int main (void)
{
	float dv12[4][4],dv13[4][4];
	COMPLEX8 cv12[4][4],cv13[4][4];
	float DS11,DS12=1.0;
	long int IS21=-10;
	short int HS21=-10,HS22=-20;
	long int IS31=1;
	float RS31=0,RS21=0;
	double DS31=0.,DS32=0;
	long int i,j,k;
	long int IS22;
	short int m;

	for(j=0;j< 4;j++)
	{
		for(i=0;i< 4;i++)
		{
			dv11[i][j]=1;
		}
	}
	for(j=0;j< 4;j++)
	{
		for(i=0;i< 4;i++)
		{
			cv11[i][j].real=2;
			cv11[i][j].imag=3;
		}
	}
	for(i=0;i< 10;i++)
	{
		if(i>=4 && i<=6)
		{
			lv21[i]=0;
		}
		else
		{
			lv21[i]=1;
		}
	}
	for(i=0;i< 10;i++)
	{
		if(i>=0 && i<=2)
		{
			rv21[i]=-1;
		}
		else if(i>=3 && i<=6)
		{
			rv21[i]=0.5;
		}
		else
		{
			rv21[i]=-2;
		}
	}
	m = 0;
	for(i=0;i< 10;i++)
	{
		if(i <= 3)
		{
			iv21[i]=m;
			m++;
		}
		else if(i>=4 && i<=8)
		{
			iv21[i]=m;
			m--;
		}
		else
		{
			iv21[i]=3;
		}
	}
	for(i=0;i< 10;i++)
	{
		iv31[i]=0;
	}
	for(i=0;i< 10;i++)
	{
		if(i==0 || (i>=6 && i<=9))
		{
			dv31[i]=0;
		}
		else if(i==1 || i==4)
		{
			dv31[i]=5;
		}
		else if(i==3 || i==5)
		{
			dv31[i]=6;
		}
		else
		{
			dv31[i]=3;
		}
	}
	INIT(dv12,dv13,cv12,cv13);
	for(k=1;k<=4;k++)
	{
		for(j=1;j<=4;j++)
		{
			for(i=1;i<=4;i++)
			{
				DS11=DV12(i,i)-DS12;
				DV11(k,j)=DV11(k,j)+DV12(k,i)*DV13(i,j);
				CV11(j,k).real=CV12(j,i).real*CV13(i,k).real
				    -CV12(j,i).imag*CV13(i,k).imag+CV11(j,k).real;
				CV11(j,k).imag=CV12(j,i).real*CV13(i,k).imag
				    +CV12(j,i).imag*CV13(i,k).real+CV11(j,k).imag;
				if (0 > DS11)
				{
					DS12=DV12(i,i);
				}
LBL_100:
				;
			}
		}
	}
	printf("  ****  **** (1) **** \n");
	printf(" ### DV11 ###\n");
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" %g ",DV11(i,j));
		}
	}
	printf("\n");
	printf(" ### DV12 ###\n");
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" %g ",DV12(i,j));
		}
	}
	printf("\n");
	printf(" ### DV13 ###\n");
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" %g ",DV13(i,j));
		}
	}
	printf("\n");
	printf(" ### CV11 ###\n");
	m = 0;
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" (%g,%g) ",CV11(i,j).real,CV11(i,j).imag);
			m++;
			if(m == 8)
			{
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ### CV12 ###\n");
	m = 0;
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" (%g,%g) ",CV12(i,j).real,CV12(i,j).imag);
			m++;
			if(m == 8)
			{
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ### CV13 ###\n");
	m = 0;
	for (j=1; j<=4; j++)
	{
		for (i=1; i<=4; i++)
		{
			printf(" (%g,%g) ",CV13(i,j).real,CV13(i,j).imag);
			m++;
			if(m == 8)
			{
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ### DS12 ###\n");
	printf(" %g\n",DS12);
	IS22=9999;
	for(i=1;i<=10;i++)
	{
		if ((LV21(i) || LV21(11-i)) == 1)
		{
			RS21=(pow(RV21(i),2) > RV21(i)*2) ? pow(RV21(i),2):RV21(i)*2;
			RS21=(RS21 > RS21) ? RS21:RS21;
			if (LV21(i) == 1)
			{
				RV21(i)=i/16;
			}
		}
		if (IV21(i) >  IS21)
		{
			IS21=IV21(i);
			HS21=i;
			HS22=RV21(i);
		}
		IS22=(IS22<fabs(IV21(i))) ? IS22:fabs(IV21(i));
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	printf(" ### RS21 ###\n");
	printf(" %g\n",RS21);
	printf(" ### RV21 ###\n");
	for (i=1; i<=10; i++)
	{
		printf(" %g ",RV21(i));
	}
	printf("\n");
	printf(" ### IV21 ###\n");
	for (i=1; i<=10; i++)
	{
		printf(" %ld ",IV21(i));
	}
	printf("\n");
	printf(" ### IS21 ###\n");
	printf(" %ld\n",IS21);
	printf(" ### HS21 ###\n");
	printf(" %d\n",HS21);
	printf(" ### HS22 ###\n");
	printf(" %d\n",HS22);
	printf(" ### IS22 ###\n");
	printf(" %ld\n",IS22);
	for(i=1;i<=10;i++)
	{
		if (IV31(i) <  IS31)goto LBL_31         ;
		IS31=IV31(i);
LBL_31:
		;
	}

	if (DV31(i-1) >= DS31)
	{
		DS31 = DV31(i-1);
	}
	if (DV31(i-1) <= DS32)goto LBL_300         ;
	{
		RS31=DV31(i-2);
		DS32=DV31(i-1);
LBL_300:
		;
	}

	printf("  ****  **** (3) **** \n");
	printf(" ### IS31 ###\n");
	printf(" %ld\n",IS31);
	printf(" ### DS31 ###\n");
	printf(" %g\n",DS31);
	printf(" ### RS31 ###\n");
	printf(" %g\n",RS31);
	printf(" ### DS32 ###\n");
	printf(" %g\n",DS32);
	printf(" ### IV31 ###\n");
	for (i=1; i<=10; i++)
	{
		printf(" %ld ",IV31(i));
	}
	printf("\n");
	printf(" ### DV31 ###\n");
	for (i=1; i<=10; i++)
	{
		printf(" %g ",DV31(i));
	}
	printf("\n");
	exit (0);
}
int INIT(dv12,dv13,cv12,cv13)

float dv12[16][1],dv13[16][1];
COMPLEX8 cv12[16][1],cv13[16][1];
{
	long int i;
	long int j=1;

	for(i=1;i<=16;i++)
	{
		DV12(i,j)=pow(1,i)*i;
		DV13(i,j)=1-i;
		CV12(i,j).real=(float)(i);
		CV12(i,j).imag=(float)(j);
		CV13(i,j).real=(float)(DV12(i,j));
		CV13(i,j).imag=(float)(DV13(i,j));
LBL_10:
		;
	}
	DV12(16,1)=0.5;
	return 0;
}

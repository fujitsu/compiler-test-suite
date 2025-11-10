#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub17();
int sub16();
int sub15();
int sub14();
int sub13();
int sub12();
int init();
#define D1(i) d1[i-1]
#define D2(i) d2[i-1]
#define D3(i) d3[i-1]
#define I1(i) i1[i-1]
#define I2(i) i2[i-1]
#define I3(i) i3[i-1]
#define L1(i) l1[i-1]
#define L2(i) l2[i-1]
#define L3(i) l3[i-1]
double d1[10],d2[10],d3[10];
long int i1[10],i2[10],i3[10];
unsigned long int l1[10],l2[10],l3[10];
int main()
{
	init();
	sub12();
	sub13();
	sub14();
	sub15();
	sub16();
	sub17();
	exit (0);
}
int init()
{
	long int i;
	for(i=1; i<=10; i++)
	{
		D1(i)=i;
		D2(i)=i+10;
		D3(i)=i+20;
		I1(i)=i;
		I2(i)=i+10;
		I3(i)=i+20;
		L1(i)=fmod(i,2) == 0;
		L2(i)=fmod(i,2) == 0;
		L3(i)=fmod(i,2) == 0;
	}
	return 0;
}
int sub12()
{
	long int i,j;
	printf(" TEST 1-2\n");
	j = -3;
	for(i=1; i<=10; i++)
	{
		if (L1(i) == 1)
		{
			j = j + 1;
			I1(i) = j;
		}
	}
	printf(" I1 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %ld ",I1(i));
		if(i == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	j = 0;
	for(i=1; i<=10; i++)
	{
		if (L1(i) == 1)
		{
			I2(i) = j;
			j = j - 1;
		}
	}
	printf(" I2 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %ld ",I2(i));
		if(i == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	return 0;
}
int sub13()
{
	long int i,j,m;

	printf(" TEST 1-3\n");
	j = 0;
	for(i=1; i<=10; i++)
	{
		if (L1(i) == 1)
		{
			j = j + 1;
			D1(j) = i;
			if (j == 5)
			{
				I2(i) = -100;
			}
		}
	}
	printf(" I1 , I2 , I3 , D1 \n");
	m = 0;
	for(i=1; i<=10; i++)
	{
		printf(" %ld %ld %ld %g ",I1(i),I2(i),I3(i),D1(i));
		m++;
		if(m == 2)
		{
			printf("\n");
			m = 0;
		}
	}
	printf("\n");
	return 0;
}
int sub14()
{
	long int i,j;

	printf(" TEST 1-4\n");
	j = 0;
	for(i=1; i<=10; i++)
	{
		if (L2(i) == 1)
		{
			j = j + 1;
			if (j == 1)
			{
				for(i=1; i<=10; i++)
				{
					printf(" THE FIRST TIME  %ld ",I3(i));
				}
				printf("\n");
			}
		}
	}
	return 0;
}
int sub15()
{
	long int i,j;
	float t;

	printf(" TEST 1-5\n");
	j = 1;
	for(i=1; i<=10; i++)
	{
		if (L3(i) == 1)
		{
			j = j + 1;
			t = D2(j);
			I3(j) = t + j;
		}
	}
	printf(" I3 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %ld ",I3(i));
	}
	printf("\n");
	return 0;
}
int sub16()
{
	long int i,j;

	printf(" TEST 1-6\n");
	j = 10;
	for(i=1; i<=10; i++)
	{
		if (L1(1) == 1)
		{
			j = j + 1;
			I1(i) = j;
		}
	}
	printf(" I1 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %ld ",I1(i));
	}
	printf("\n");
	j = 8;
	for(i=1; i<=10; i++)
	{
		if (L1(2) == 1)
		{
			j = j + 1;
			I2(i) = j;
		}
	}
	printf(" I2 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %ld ",I2(i));
		if(i == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	return 0;
}
int sub17()
{
	short int H1=0,H2=10;
	long int J1=0,J2=10,i;
	long double Q1=1.00000000000001;

	for(i=0; i<10; i++)
	{
		if(i>=0 && i<=1)
		{
			d1[i] = 3;
		}
		else
		{
			d1[i] = 2.5;
		}
	}
	for(i=0; i<10; i++)
	{
		if(i>=1 && i<=5)
		{
			l1[i] = 0;
		}
		else
		{
			l1[i] = 1;
		}
	}
	printf("  SPECIAL TYPE QUASI INDUCTION (SUB17)\n");
	for(i=1; i<=10; i++)
	{
		if (L1(i) == 1)
		{
			H1 = H1 + 1;
			D1(H1) = D1(H1) / 5;
		}
		else
		{
			D1(J2) = D1(J2) * i;
			J2 = J2 - 1;
		}
	}
	printf(" D \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",D1(i));
	}
	printf("\n");
	printf(" H1= %d H2= %d\n",H1,H2);
	J1 = J1 + 1;
	for(i=1; i<=10; i++)
	{
		if (fmod(i,2) == 0)
		{
			D2(i) = D1(J1);
			J1 = 9 - J1;
		}
		if (fmod(i,2) == 1)
		{
			Q1 = Q1 + 1;
			D2(i) = D1((int)(Q1));
		}
	}
	printf(" D2 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",D2(i));
	}
	printf("\n");
	printf(" Q1= %g J1= %ld\n",(double)Q1,J1);
	H1 = 0;
	H2 = 10;
	J1 = 0;
	J2 = 10;
	Q1 = 1.00000000000001;
	for(i=1; i<=10; i++)
	{
		if (L1(i) == 1)
		{
			H1 = H1 + 1;
			D1(H1) = D1(H1) / 5;
		}
		else
		{
			D1(J2) = D1(J2) * i;
			J2 = J2 - 1;
		}
	}
	printf(" D1 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",D1(i));
	}
	printf("\n");
	J1 = J1 + 1;
	for(i=1; i<=10; i++)
	{
		if (fmod(i,2) == 0)
		{
			D2(i) = D1(J1);
			J1 = 9 - J1;
		}
		if (fmod(i,2) == 1)
		{
			Q1 = Q1 + 1;
			D2(i) = D1((int)(Q1));
		}
	}
	printf(" D2 \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",D2(i));
	}
	printf("\n");
	return 0;
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct{
	float real;
	float imag;
}complex8;
typedef struct{
	double dreal;
	double dimag;
}complex16;
int main()
{
	long int a1[32],b1[32];
	float a2[32],b2[32];
	double a3[32],b3[32];
	complex8 a4[32],b4[32];
	complex16 a5[32],b5[32];
	static unsigned long int a6[32],b6[32];
	static unsigned char a7[32],b7[32];
	long int n,i;
	for(i=0;i<32;i++)
	{
		a1[i]=0;
		b1[i]=10;
		a2[i]=0.0;
		b2[i]=10.0;
		a3[i]=0.0;
		b3[i]=10.0;
		a4[i].real=1.0;
		a4[i].imag=1.0;
		b4[i].real=10.0;
		b4[i].imag=2.0;
		a5[i].dreal=1.0;
		a5[i].dimag=1.0;
		b5[i].dreal=10.0;
		b5[i].dimag=1.0;
		b6[i]=0;
		b7[i]=0;
	}
	for(i=0;i<32;i++)
	{
		a6[i]=0;
		a7[i]=0;
	}
	n=10;
	for(i=0;i<32;i++)
	{
		if (i > 5)
		{
			if (n > 5 || b6[i] || !(b7[i]))
			{
				a1[i]=b1[i];
				a6[i]=a1[i]>5;
				a7[i]=a1[i]<=6;
				if (i > 7)
				{
					a1[i]=b1[i]*5;
				}
				else
				{
					a1[i]=b1[i]*3;
				}
			}
			else
			{
				a6[i]=a1[i]>10;
				a7[i]=a1[i]<=20;
				a1[i]=b1[i]*9;
			}
		}
	}
	for(i=0;i<32;i++)
	{
		if (i > 5)
		{
			if (n > 5)
			{
				a2[i]=b2[i];
				if (i > 7)
				{
					a2[i]=b2[i]*5;
				}
				else
				{
					a2[i]=b2[i]*3;
				}
			}
			else
			{
				a2[i]=b2[i]*9;
			}
		}
	}
	for(i=0;i<32;i++)
	{
		if (i > 5)
		{
			if (n > 5)
			{
				a3[i]=b3[i];
				if (i > 7)
				{
					a3[i]=b3[i]*5;
				}
				else
				{
					a3[i]=b3[i]*3;
				}
			}
			else
			{
				a3[i]=b3[i]*9;
			}
		}
	}
	for(i=0;i<32;i++)
	{
		if (i > 5)
		{
			if (n > 5)
			{
				a4[i]=b4[i];
				if (i >  7)
				{
					a4[i].real=b4[i].real*5;
					a4[i].imag=b4[i].imag*5;
				}
				else
				{
					a4[i].real=b4[i].real*3;
					a4[i].imag=b4[i].imag*3;
				}
			}
			else
			{
				a4[i].real=b4[i].real*9;
				a4[i].imag=b4[i].imag*9;
			}
		}
	}
	for(i=0;i<32;i++)
	{
		if (i > 5)
		{
			if (n > 5)
			{
				a5[i]=b5[i];
				if (i > 7)
				{
					a5[i].dreal=b5[i].dreal*5;
					a5[i].dimag=b5[i].dimag*5;
				}
				else
				{
					a5[i].dreal=b5[i].dreal*3;
					a5[i].dimag=b5[i].dimag*3;
				}
			}
			else
			{
				a5[i].dreal=b5[i].dreal*9;
				a5[i].dimag=b5[i].dimag*9;
			}
		}
	}
	printf(" ****  ****\n");
	for(i=0;i<32;i++)
	{
		printf(" **** a[%2ld] ****\n",i);
		printf(" a1[%ld]= %ld  a2[%ld]= %f ",i,a1[i],i,a2[i]);
		printf(" a3[%ld]= %f \n",i,a3[i]);
		printf(" a4[%2ld].real= %f ",i,a4[i].real);
		printf(" a4[%2ld].imag= %f \n",i,a4[i].imag);
		printf(" a5[%2ld].dreal= %f ",i,a5[i].dreal);
		printf(" a5[%2ld].dimag= %f \n",i,a5[i].dimag);
		printf(" **** b[%2ld] ****\n",i);
		printf(" b1[%ld]= %ld  b2[%ld]= %f ",i,b1[i],i,b2[i]);
		printf(" b3[%ld]= %f \n",i,b3[i]);
		printf(" b4[%2ld].real= %f ",i,b4[i].real);
		printf(" b4[%2ld].imag= %f \n",i,b4[i].imag);
		printf(" b5[%2ld].dreal= %f ",i,b5[i].dreal);
		printf(" b5[%2ld].dimag= %f \n",i,b5[i].dimag);
		printf(" b6[%2ld]= %ld \n",i,b6[i]);
	}
	printf(" **** b7 ****\n b7[ ]= [");
	for(i=0;i<32;i++)
	{
		printf("%ld",b7[i]);
	}
	printf("]\n");
	exit (0);
}
 

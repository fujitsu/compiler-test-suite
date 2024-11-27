#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a1[32],b1[32];
	float a2[64],b2[64];
	float a3[128],b3[128];
	float a4[256],b4[256];
	float a5[512],b5[512];
	float a6[600],b6[600];
	float e[200][200];
	long int i,j;
	for(i=0;i<32;i++)
	{
		a1[i]=10.0;
	}
	for(i=0;i<32;i++)
	{
		b1[i]=0.0;
	}
	for(i=0;i<64;i++)
	{
		a2[i]=10.0;
	}
	for(i=0;i<64;i++)
	{
		b2[i]=0.0;
	}
	for(i=0;i<128;i++)
	{
		a3[i]=10.0;
	}
	for(i=0;i<128;i++)
	{
		b3[i]=0.0;
	}
	for(i=0;i<256;i++)
	{
		a4[i]=10.0;
	}
	for(i=0;i<256;i++)
	{
		b4[i]=0.0;
	}
	for(i=0;i<512;i++)
	{
		a5[i]=10.0;
	}
	for(i=0;i<512;i++)
	{
		b5[i]=0.0;
	}
	for(i=0;i<600;i++)
	{
		a6[i]=10.0;
	}
	for(i=0;i<600;i++)
	{
		b6[i]=0.0;
	}
	for(j=0;j<200;j++)
	{
		for(i=0;i<200;i++)
		{
			e[i][j]=0.0;
		}
	}
	for(j=0;j<200;j++)
	{
		for(i=0;i<10;i++)
		{
			b1[i]=a1[i];
			e[i][j]=b2[i]*0.6;
		}
		for(i=0;i<50;i++)
		{
			b2[i]=a2[i]*6.;
			e[i][j]=e[i][j]+b2[i]*0.4;
		}
		for(i=0;i<100;i++)
		{
			e[i+10][j]=b3[i];
			b3[i]=a3[i];
			e[i][j]=b3[i]+a3[i];
		}
		for(i=0;i<200;i++)
		{
			b4[i]=a4[i];
		}
		for(i=0;i<300;i++)
		{
			b5[i]=a5[i];
		}
		for(i=0;i<600;i++)
		{
			b6[i]=a6[i];
		}
	}
	printf(" *****  *****\n");
	for(i=0;i<32;i++)
	{
		printf(" a1[%2ld]= %f  b1[%2ld]= %f",i,a1[i],i,b1[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<64;i++)
	{
		printf(" a2[%2ld]= %f  b2[%2ld]= %f",i,a2[i],i,b2[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<128;i++)
	{
		printf(" a3[%3ld]= %f  b3[%3ld]= %f",i,a3[i],i,b3[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<256;i++)
	{
		printf(" a4[%3ld]= %f  b4[%3ld]= %f",i,a4[i],i,b4[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<512;i++)
	{
		printf(" a5[%3ld]= %f  b5[%3ld]= %f",i,a5[i],i,b5[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<600;i++)
	{
		printf(" a6[%3ld]= %f  b6[%3ld]= %f",i,a6[i],i,b6[i]);
		if(((i+1)%2 == 0) && (i != 0)) printf("\n");
	}
	for(i=0;i<200;i++)
	{
		for(j=0;j<200;j++)
		{
			printf(" e[%3ld][%3ld]= %f ",i,j,e[i][j]);
			if(((j+1)%2 == 0) && (j != 0)) printf("\n");
		}
	}
	exit (0);
}
 

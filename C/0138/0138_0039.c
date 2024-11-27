#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10];
	float c[10],d[10],e[10],f[10];
	int i,j;
	for(i=0;i< 10;i++)
	{
		a[i]=1;
	}
	for(i=0;i< 10;i++)
	{
		b[i]=2;
	}
	for(i=0;i< 10;i++)
	{
		c[i]=0.5;
	}
	for(i=0;i< 10;i++)
	{
		f[i]=2.0;
	}
	for(j=0;j<10;j++)
	{
		f[j]=c[j];
		d[j]=(float)(sin((double)c[j]));
		e[j]=c[j]+d[j]+f[j];
	}
	printf("  *****  *(1)*\n");
	for(i=0;i<10;i++)
	{
		printf(" c[%d]= %f  d[%d]= %f",i,c[i],i,d[i]);
		printf(" e[%d]= %f  f[%d]= %f \n",i,e[i],i,f[i]);
	}
	for(j=0;j<10;j++)
	{
		c[j]=e[j];
		d[a[j]]=c[j];
		f[j]=e[b[j]];
	}
	printf("  *****  *(2)*\n");
	for(i=0;i<10;i++)
	{
		printf(" c[%d]= %f  d[%d]= %f ",i,c[i],i,d[i]);
		printf(" e[%d]= %f  f[%d]= %f \n",i,e[i],i,f[i]);
	}
	exit (0);
}

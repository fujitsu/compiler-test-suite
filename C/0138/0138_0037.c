#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[256],b[256],c[256],d[256],e[256];
	long int n;
	static int i,j;
	for(i=0;i<256;i++)
	{
		a[i]=1;
	}
	for(i=0;i<256;i++)
	{
		b[i]=2;
	}
	for(i=0;i<256;i++)
	{
		c[i]=3;
	}
	for(i=0;i<256;i++)
	{
		d[i]=4;
	}
	for(i=0;i<256;i++)
	{
		e[i]=256;
	}
	for(j=0;j<10;j++)
	{
		d[j]=a[j]+b[j]+c[j];
	}
	printf("  *****  *(1)*\n");
	printf(" a[1]= %ld  b[1]= %ld ",a[1],b[1]);
	printf(" c[1]= %ld  d[1]= %ld \n",c[1],d[1]);
	for(i=0;i<10;i++)
	{
		printf(" e[%d]= %ld ",i,e[i]);
		if(((i%5) == 0) && i !=0) printf("\n");
	}
	n=256;
	for(j=0;j<n;j++)
	{
		d[j]=(a[j]+1)+((b[j]+2)+(c[j]+3))*4;
	}
	printf("\n  *****  *(2)*\n");
	for(i=0;i<256;i++)
	{
		printf(" a[%3d]= %ld  b[%3d]= %ld ",i,a[i],i,b[i]);
		printf(" c[%3d]= %ld ",i,c[i]);
		printf(" d[%3d]= %ld \n",i,d[i]);
	}
	exit (0);
}
 

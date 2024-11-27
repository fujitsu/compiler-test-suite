#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10],d[200],e[200],f[200];
	float q[300],x[50],y[10],z[10],y1[10],z1[10];
	float o[500],p[256];
	static int i,j,k,l,m,i1,i2;
	for(i=0;i<10;i++)
	{
		a[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=i+11;
	}
	for(i=0;i<10;i++)
	{
		z[i]=1;
	}
	for(i=0;i<10;i++)
	{
		z1[i]=1;
	}
	for(i=0;i<10;i++)
	{
		c[i]=a[i]+b[i]/3.0;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %g ",i,a[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(i=0;i<10;i++)
	{
		printf(" b[%d]= %g ",i,b[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(i=0;i<10;i++)
	{
		printf(" c[%d]= %7.4g ",i,c[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(j=0;j<200;j++)
	{
		d[j]=0.0;
		e[j]=1.0;
		f[j]=2.0;
	}
	for(i=0;i<200;i++)
	{
		printf(" d[%3d]= %g ",i,d[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(i=0;i<200;i++)
	{
		printf(" e[%3d]= %g ",i,e[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(i=0;i<200;i++)
	{
		printf(" f[%3d]= %g ",i,f[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(k=0;k<300;k++)
	{
		q[k]=3;
	}
	for(i=0;i<300;i++)
	{
		printf(" q[%3d]= %g ",i,q[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(l=0;l<50;l++)
	{
		x[l]=4.0;
	}
	for(i=0;i<50;i++)
	{
		printf(" x[%3d]= %g ",i,x[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(m=0;m<10;m++)
	{
		y[m]=4.0+z[m];
		y1[m]=4.0+z1[m];
	}
	for(i=0;i<10;i++)
	{
		printf(" y[%d]= %g y1[%d]= %g",i,y[i],i,y1[i]);
		if(((i+1)%3) == 0 && i!=0)  printf("\n");
	}
	printf("\n");
	for(i1=0;i1<500;i1++)
	{
		o[i1]=1234.5;
	}
	for(i=0;i<500;i++)
	{
		printf(" o[%3d]= %g",i,o[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	for(i2=0;i2<256;i2++)
	{
		p[i2]=256.0;
	}
	for(i=0;i<256;i++)
	{
		printf(" p[%3d]= %g ",i,p[i]);
		if(((i+1)%5) == 0 && i!=0)  printf("\n");
	}
	printf("\n");
	exit (0);
}

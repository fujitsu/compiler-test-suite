#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[1000][10],b[1000][10],c[1000][10];
	long int i,j;
	for(j=0;j<10;j++)
	{
		for(i=0;i<1000;i++)
		{
			a[i][j]=i+1;
			b[i][j]=i+1.2+1;
			c[i][j]=j+1;
		}
	}
	for(i=0;i<100;i++)
	{
		a[i][1]=b[i][1]-c[i][1];
	}
	for(i=0;i<100;i++)
	{
		b[i][2]=a[i][1]*2.0;
		b[i+51][3]=b[i][2]*2.0;
	}
	for(j=2;j<10;j+=2)
	{
		for(i=99;i<1000;i+=2)
		{
			a[i][j]=b[i][j]*3.5;
			c[i][j]=a[i][j+1]*4.0;
		}
	}
	for(j=4;j<10;j+=3)
	{
		for(i=199;i<300;i++)
		{
			b[i][j]=a[i][j+1]*4.0;
		}
		for(i=399;i<500;i++)
		{
			b[i][j]=a[i][j+1]*5.0;
		}
	}
	printf("*****  *****\n");
	for(j=0;j<1000;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%4ld][%ld]= %f ",j,i,a[j][i]);
			printf("b[%4ld][%ld]= %f ",j,i,b[j][i]);
			printf("c[%4ld][%ld]= %f \n",j,i,c[j][i]);
		}
	}
	exit (0);
}
 

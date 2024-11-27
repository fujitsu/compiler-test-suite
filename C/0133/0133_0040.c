#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (float a[10][10], long int k);

int main()
{
	float a[10][10],b[10][10],c[10][10];
	long int i,j,k;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[j][i]=1.0;
			b[j][i]=3.3;
			c[j][i]=4.1;
		}
	}
	printf("''\n");
	for(j=1;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			for(k=0;k<10;k++)
			{
				sub(a,k);
			}
			c[j][i]=b[j][i];
			b[j][i]=a[j][i];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g , c[%ld][%ld]=%g\n",
			    j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]);
		}
	}
	exit (0);
}
int sub (float a[10][10], long int k)
{
	long int l;
	for(l=0;l<k;l++)
	{
		a[4][l]=k;
	}
	return 0;
}

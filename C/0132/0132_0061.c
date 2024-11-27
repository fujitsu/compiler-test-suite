#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int a[5][5], int b[5][5], int c[5][5]);

int main()
{
	int i,j,a[5][5],b[5][5],c[5][5];
	for(i=0;i<5;i++){
		for(j=0;j<5;j++){
			a[i][j]=1;
			b[i][j]=2;
			c[i][j]=3;
		}
	}
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			printf(" a = %d b = %d c = %d \n",a[i][j],b[i][j],c[i][j]) ;
		}
	}
	sub(a,b,c);
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			printf(" a = %d b = %d c = %d \n",a[i][j],b[i][j],c[i][j]) ;
		}
	}
	exit (0);
}
int sub(a,b,c)
int  a[5][5],b[5][5],c[5][5];
{
	int i,j;
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			a[i][j] = 2 ;
			b[i][j] = 3 ;
			c[i][j] = 4 ;
		}
	}
}

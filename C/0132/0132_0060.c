#include <stdlib.h>
#include <stdio.h>
#include <math.h>

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
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			printf(" a = %d b = %d c = %d \n",a[i][j],b[i][j],c[i][j]) ;
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int i,j,n=20,m=20 ;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a[i][j]=0;
			b[i][j]=1;
			c[i][j]=2;
		}
	}

	for(j=0;j<20;j++)
	{
		if (j > 9)
		{
			a[0][j] = 9.8 ;
		}
	}

	for(j=0;j<20;j++)
	{
		if (j > 9) a[1][j] = 9.9 ;
	}

	for(j=0;j<20;j++)
	{
		if (j > 9) goto lbl_12 ;
		a[2][j] = 10.0 ;
lbl_12:
		;
	}
	for(j=0;j<20;j+=2)
	{
		if (j > 9)
		{
			a[0][j] = 8.8 ;
		}
		for(i=0;i<10;i++)
		{
			a[i][j] = 8.0 ;
		}
	}
	for(j=0;j<20;j+=2)
	{
		if (j > 10) goto lbl_31 ;
		b[1][j] = 8.7 ;
		for(i=0;i<10;i+=2)
		{
			a[i][j] = 8.1 ;
		}
lbl_31:
		;
	}
	for(j=0;j<20;j+=2)
	{
		for(i=0;i<10;i+=2)
		{
			if (j > 15)
			{
				a[i][j] = 7.8 ;
			}
		}
		a[i][j] = 7.0 ;
	}
	for(j=0;j<20;j+=2)
	{
		for(i=0;i<10;i+=2)
		{
			b[i][j] = 7.7 ;
			if (j > 9) goto lbl_50 ;
			b[i][j] = 7.1 ;
		}
lbl_50:
		;
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=%8.3f b[%2ld][%2ld]=%8.3f c[%2ld][%2ld]=%8.3f\n",
			    i,j,a[i][j],i,j,b[i][j],i,j,c[i][j]) ;
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[10],b[10][10] ;
	
	for(i=0;i<10;i++)
	{
		a[i] = i ;
	}
	for(i=0;i<10;i++) a[i] = a[i] + i ;
	
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			b[j][i] = j ;
		}
	}
	
	for(i=0;i<10;i++) for(j=0;j<10;j++) b[j][i] = b[j][i] + j ;
	
	for(i=0;i<10;i++)
	{
		a[i] = a[i] + i ;
		for(j=0;j<10;j++)
		{
			b[j][i] = b[j][i] + j ;
		}
		a[i] = a[i] + i ;
	}
	
	for(i=0;i<10;i++)
	{
		if(a[i] == i) goto lb10 ;
		a[i] = a[i] + i ;
	}
	
lb10:
	for(i=0;i<10;i++)
	{
		if(a[i] != i) break ;
		a[i] = a[i] - i ;
	}
	
	for(i=0;i<10;i++)
	{
		if(a[i] == i) goto lb20 ;
		for(j=0;j<10;j++)
		{
			b[i][j] = b[i][j] - j ;
		}
		a[i] = a[i] - i ;
	}
	
lb20:
	for(i=0;i<10;i++)
	{
		if(a[i] == i) goto lb30 ;
		for(j=0;j<10;j++)
		{
			b[i][j] = b[i][j] - j ;
		}
lb30:
		a[i] = a[i] - i ;
	}
	
	for(i=0;i<10;i++)
	{
		printf("a[%d]=>%d\n",i,a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			printf("b[%d][%d]=>%d\n",i,j,b[i][j]) ;
		}
	}
	exit (0);
}

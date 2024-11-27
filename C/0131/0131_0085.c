#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10] ;
	int i=0 ;
	for(i=0;i<10;i++)
	{
		a[i] = i+ 1 ;
		switch(a[i]%2)
		{
		case 0 :
			b[i] = a[i] ;
		case 1 :
			b[i] = 0 ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %5d \n",i,b[i]) ;
	}
	exit (0);
}

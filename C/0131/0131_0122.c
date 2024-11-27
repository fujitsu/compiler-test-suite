#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[5] ;
	int i,j ;
	
	j = 0 ;
	for(i=0;i<5;i++)
	{
		a[j++] = i ;
	}
	printf("a[*] => %d %d %d %d %d\n",a[0],a[1],a[2],a[3],a[4]) ;
	exit (0);
}

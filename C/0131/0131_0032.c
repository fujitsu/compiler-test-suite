#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int func() ;
	int i ;
	int rst = 0 ;
	
	for(i=0;i<10;i++)
	{
		rst = rst + func(i) ;
	}
	printf("%5d \n",rst) ;
	exit (0) ;
}

int func(i)
int i ;
{
	i = i * i ;
	return i  ;
}

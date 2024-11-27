#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	auto int val1[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		val1[i] = i ;
	}
	for(i=0;i<10;i++)
	{
		auto int val2[10] ;
		val2[i] = 9 - i ;
		printf("val1[%d] => %d  val2[%d] => %d \n",i,val1[i],i,val2[i]) ;
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct st1
	{
		int a[10] ;
		int b[10] ;
	} tag ;
	int i ;
	
	for(i=0;i<10;i++)
	{
		tag.a[i] = i ;
		tag.b[i] = tag.a[i] + i ;
	}
	
	for(i=0;i<10;i++)
	{
		printf("tag.b[%d] => %d \n",i,tag.b[i]) ;
	}
	exit (0);
}

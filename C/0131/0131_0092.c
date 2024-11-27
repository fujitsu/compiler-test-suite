#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct st1
	{
		int a ;
		int b ;
	} tag[10] ;
	int i ;
	
	for(i=0;i<10;i++)
	{
		tag[i].a = i ;
		tag[i].b = tag[i].a + i ;
	}
	
	for(i=0;i<10;i++)
	{
		printf("tag[%d].b => %d \n",i,tag[i].b) ;
	}
	exit (0);
}

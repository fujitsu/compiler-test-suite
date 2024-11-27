#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ary {
		int t ;
	} tag[10] ;
	int i ;
	
	for(i=0;i<10;i++)
	{
		tag[i].t = i ;
		printf(" tag[%d].t => %d \n",i,tag[i].t) ;
	}
	exit (0);
}

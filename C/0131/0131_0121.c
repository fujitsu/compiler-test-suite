#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ary {
		int a[3] ;
	} tag ;
	int i ;
	
	for(i=0;i<3;i++)
	{
		tag.a[i] = i ;
	}
	printf("tag.a[*] => %d %d %d\n",tag.a[0],tag.a[1],tag.a[2]) ;
	exit (0);
}

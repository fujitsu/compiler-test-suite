#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,l,m;
	i=1;
	j=1;
	for( l=i++ ,m=++j ; l<10 ,m<10 ; l++,m++ )
	{
		printf(" l = %d , m = %d \n",l,m);
	}
	exit (0);
}

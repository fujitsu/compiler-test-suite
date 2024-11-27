#include <stdlib.h>

#include <stdio.h>
#include <math.h>
#include <string.h>

struct array{
	double   x;
	double   y;
	long int n;
} strl[2049] ;
int suba(struct  array  *p);
int main()
{
	long int          i;
	for(i=0;i<2049;i++)
	{
		strl[i].x=1.0;
		strl[i].y=1.0;
		strl[i].n=i;
	}
	suba(&strl[0].x);
	for(i=0;i<2049;i++)
	{
		printf("i= %d ,X= %g ,N= %d \n",i,strl[i].x,strl[i].n);
	}
	exit (0);
}
int suba(p)
struct  array  *p;
{
	long int          i;
	for(i=0;i< 2049;i++)
	{
		(p+i)->x = (p+i)->x + (p+i)->y ;
		(p+i)->n += 1;
	}
}

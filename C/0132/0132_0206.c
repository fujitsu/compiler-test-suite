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
	static double      x[2049],y[2049],n[2049];
	long int          i;
	for(i=0;i<2049;i++)
	{
		x[i]=1.0;
		y[i]=1.0;
		n[i]=0.0;
	}
	suba(&strl[0].x);
	for(i=0;i<2049;i++)
	{
		printf("x= %g ,n= %g \n",x[i],n[i]);
	}
	exit (0);
}
int suba(p)
struct  array  *p;
{
	long int          i;
	for(i=0;i< 2049;i++)
	{
		p->x = p->x + p->y ;
		p->n += 1;
		p++;
	}
}

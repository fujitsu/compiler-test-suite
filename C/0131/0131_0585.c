#include <stdlib.h>
#include <stdio.h>
#include <math.h>

static int      a[10]= {
	1,2,3,4,5,6,7,8,9,0 };
static float    b[10]= {
	5,6,7,8,9,0,1,2,3,4 };
static double   c[10]= {
	2,3,4,5,6,7,8,9,0,1 };
static long int d[10]= {
	1,0,0,1,1,0,1,1,0,0};
static int      e[10]= {
	1,2,3,4,5,6,7,8,9,0 };
static double   f[10]= {
	7,8,9,0,1,2,3,4,5,6};
int main()
{
	static long int i,*p,*q,j,k;
	q = &d[0] ;
	for (j=0;j<10;j++) a[j] = j;
	for (i=0;i<10;i++)
	{
		if (*(q+i)>100) c[*(q+i)] = b[e[i]] + a[*(q+i)] ;
	}
	for (k=0;k<10;k++) printf("%f \n",c[k]);
	exit (0);
}

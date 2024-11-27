#include <stdlib.h>
#include <stdio.h>

#include <math.h>

int func(float t)
{
	printf("t => %f\n",t);
	return 0;
}

#if __GNUC__

static long int sub();
#endif 
int main()
{
	double a[10],t;
	long int i,j;
#if !__GNUC__
	static long int sub();
#endif 
	j=sub();
	for(i=0;i<j;i++)
	{
		a[i] = i;
		t = pow((double)a[i],(double)(i%3));
		func(t);
	}
	for(i=0;i<10;i++)
		printf("A[%ld]=> %g\n",i,a[i]);
	exit (0);
}
static long int sub()
{
	return 10 ;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int ias;
float b[10];
#if __GNUC__

static void sub1();
static void sub2();
#endif 
int main()
{
#if !__GNUC__
	static void sub1();
	static void sub2();
#endif 
	int  m[10],i;
	ias=0;
	sub1(&m);
	for(i=0;i<10;i++) printf("%d ",m[i]);
	printf("\n");
	exit (0);
}

static void sub1(int *m)
{
	int i;
	float a[10]={
		0,1,2,3,4,5,6,7,8,9	};
	for(i=0;i<10;i++)
	{
		sub2(&b[i]);
		m[i]=b[(int)ias]+a[i];
		a[i]=b[i]*b[i];
		printf("%5.2f ",a[i]);
		printf("%d ",m[i]);
		printf("\n");
	}
}

static void sub2(float *a)
{
	*a=1.;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#if __GNUC__

static void sub();
#endif 
int main()
{
	float a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i;
#if !__GNUC__
	static void sub();
#endif 
	for( i=0;i<10;i++)
	{
		sub(&a[i]);
	}
	for(i=0;i<10;i++) printf("%5.2f \n",a[i]);
	exit (0);
}

static void sub(float *a)
{
	*a=1.0;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#if __GNUC__

static void sub();
#endif 
int main()
{
	int i;
#if !__GNUC__
	static void sub();
#endif 
	float a[10];
	for( i=0;i<10;i++) sub(&a[i]);
	for( i=0;i<10;i++) printf("%7.2f \n",a[i]);
	exit (0);
}

static void sub(float *a)
{
	*a=1.0;
}

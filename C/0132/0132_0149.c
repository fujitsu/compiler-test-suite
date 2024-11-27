#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#if __GNUC__

static void sub();
#endif 
int main()
{
	int m;
#if !__GNUC__
	static void sub();
#endif 
	sub(&m);
	printf("%d \n",m);
	exit (0);
}

static void sub(int *m)
{
	int i;
	for(i=0;i<100;i++) *m=i;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#if __GNUC__

static void sub();
#endif 
int main()
{
	int m[10],i;
#if !__GNUC__
	static void sub();
#endif 
	sub(m);
	exit (0);
}

static void sub(int m[10])
{
	int i;
	for(i=0;i<10;i++) m[i]=i;
	for(i=0;i<10;i++) printf("%d \n",m[i]);
}

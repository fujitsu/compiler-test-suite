#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#if __GNUC__

static long int sub();
#endif 
int main()
{
	long int n[10]={
		2,2,2,2,2,2,2,2,2,2	};
	long int i,j;
	double m;
#if !__GNUC__
	static long int sub();
#endif 
	j=sub();

	for(i=1;i<j;i++)
	{
		m = pow((double)i,(double)n[i]);
		printf("m => %g \n",m);
	}
	exit (0);
}
static long int sub()
{
	return 10 ;
}

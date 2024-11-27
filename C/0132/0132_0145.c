#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#if __GNUC__

static double c();
#endif 
int main()
{
	int i;
	double  a[10]={
		1,2,3,4,5,6,7,8,9,10	},
	b[10];
#if !__GNUC__
	static double c();
#endif 
	int j={ 
		9	};
	
	for(i=0;i<10;i++)
	{
		b[j] =c(a[i]);
		if(b[j]<=0) b[j] = 0;
		j =j-1;
	}
	for(i=0;i<10;i++) printf("%5.2f \n",b[i]);
	exit (0);
}
static double c(double s)
{
	return s*s;
}

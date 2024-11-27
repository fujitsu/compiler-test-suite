#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,j,k,l;
	long int a,b;
	a=b=10;
	for(i=0,j=10,k=20,l=30;i<10,j<20,k<30,l<40;i++,j++,k++,l++){
		a=a+10;
		b=b+20;
	}
	printf("%ld,%ld \n",a,b);
	exit (0);
}

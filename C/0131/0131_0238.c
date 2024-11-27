#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[]);

int main() {
	long int sum , a[10] ;
	int      i ;
	for(i=0 ; i<10 ; i++) {
		a[i] = i ;
	}
	sum = sub(a) ;
	printf("sum = %ld \n",sum);
	exit (0);
}
int sub(ax)
long int ax[] ;
{
	long int sum = 0;
	int      i;
	for(i=0 ; i<10 ; i++) {
		sum += ax[i];
	}
	return(sum);
}

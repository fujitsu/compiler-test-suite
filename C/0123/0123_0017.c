#include <stdlib.h>
#include <math.h>

#include <stdio.h>
int main() {
	double a[10][10];
	int i,n=10;
	static const int k=2;

	for (i=0;i<n;i++) a[2][i]=10.0;
	for (i=0;i<n-2;i++) a[2][i]=a[2][i+k]+1.0;

	printf("%g %g\n",a[2][7],a[2][9]);
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[5][5],b[5][5],c[5][5],s;
	long int i,j;
	s = 0.0;
	for(i=0;i<5;i++)
		for(j=0;j<5;j++)
		{
			a[i][j] = 5.0;
			b[i][j] = 3.0;
		}

	for(i=0;i<5;i++)
		for(j=0;j<5;j++)
		{
			c[i][j] = a[i][j] + b[i][j];
			s = s + a[i][j];
		}
	printf("s => %7.2f\n",s);
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("c[%ld][%ld] => %f\n",i,j,c[i][j]);
	exit (0);
}

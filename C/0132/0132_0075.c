#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[5][5],b[5][5],s;
	long int i,j;
	float sum(float a[5][5],float b[5][5]);
	for(i=0;i<5;i++) for(j=0;j<5;j++) {
		a[i][j] = i*j;
		b[i][j] = i*j-i;
	}
	s = sum(a,b);
	printf("s => %f\n",s);
	exit (0);
}
float sum(float a[5][5],float b[5][5])
{
	float sumx;
	long int i,j;
	sumx = 0.0;
	for(i=0;i<5;i++)
		for(j=0;j<5;j++)
			sumx = sumx + a[i][j] + b[i][j];
	return sumx;
}

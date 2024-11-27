#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[5][5][5],b[5][5][5],c[5][5][5],s;
	long int i,j,k;
	for(i=0;i<5;i++)
		for(j=0;j<5;j++)
			for(k=0;k<5;k++)
			{
				a[i][j][k] = 5.0;
				b[i][j][k] = 3.0;
			}
	s = 0;
	for(i=0;i<5;i++)
		for(j=0;j<5;j++)
			for(k=0;k<5;k++)
			{
				c[i][j][k] = a[i][j][k] + b[i][j][k];
				s = s + a[i][j][k];
			}
	printf("s => %7.2f\n",s);
	for(i=0;i<5;i++) for(j=0;j<5;j++) for(k=0;k<5;k++)
		printf("c[%ld][%ld][%ld] => %7.2f\n",i,j,k,c[i][j][k]);
	exit (0);
}

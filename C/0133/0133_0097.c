#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10][10],b[10][10][10],c[10][10][10];

	long int nn=9;
	long int k,j,i;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a[k][j][i]=1.;
				b[k][j][i]=2.;
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				c[k][j][i]=3.;
			}
		}
	}
	for(i=1;i<nn;i++)
	{
		for(j=1;j<nn;j++)
		{
			for(k=1;k<nn;k++)
			{
				a[j][j][k]=b[j-1][k-1][j+1]+c[j+1][k][i];
			}
			c[j][j][i]=(float)(i);
			for(k=0;k<nn;k++)
			{
				b[j][k][j]=a[1][nn-1][k]*c[j+1][k][i];
			}
		}
	}
	printf("  ***  *** \n");
	for(k=0;k<5;k++){
		for(j=0;j<5;j++){
			for(i=0;i<5;i++){
				printf("a[%ld][%ld][%ld]=%g , ",k,j,i,a[k][j][i]);
				printf("b[%ld][%ld][%ld]=%g , ",k,j,i,b[k][j][i]);
				printf("c[%ld][%ld][%ld]=%g\n",k,j,i,c[k][j][i]);
			}
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[20][2],b[20];           
	long int sum;
	int    i,j;
	for(i=0 ; i<20 ; i++)             
	{
		for(j=0 ; j<2 ; j++)
		{
			a[i][j] = j;
			printf("a[%d][%d]=%ld \n",i,j,a[i][j]);
		}
	}
	for(i=0 ; i<20 ; i++)             
	{
		b[i]=a[i][0]+a[i][1];
		printf("b[%d]=>%ld \n",i,b[i]);
	}
	sum=0;
	for(i=0 ; i<20 ; i++)
	{
		sum+=b[i];
	}
	printf("Test Result SUM=%ld \n",sum);   
	exit (0);
}
 

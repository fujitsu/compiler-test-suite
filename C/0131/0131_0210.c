#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define R2(i) r2[i-1]
float  r2[11]={
	0,2,1,2,3,4,5,6,7,8,9};
int main()
{
	long int I,J;
	for(I=1;I<10;I++)
	{
		J=11-I;
		R2(J) = R2(J-1) + (float)(J);
	}
	for(I=1;I<=11;I++)
	{
		printf(" %f \n",R2(I));
	}
	exit (0);
}

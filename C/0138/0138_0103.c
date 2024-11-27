#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a1[10],a2[10],a3[10],a4[10],c[10];
	float s2;
	long int i;
	printf("*****  ***** \n");
	s2=1.0;
	for(i=0;i<10;i++)
	{
		c[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		a1[i]=s2+c[i];
		a2[i]=s2-c[i];
		a3[i]=s2*c[i];
		a4[i]=s2/c[i];
	}
	for(i=0;i<10;i++)
	{
		printf("***** [%ld] ***** \n",i);
		printf(" a1[%ld]= %f  a2[%ld]= %f \n",i,a1[i],i,a2[i]);
		printf(" a3[%ld]= %f  a4[%ld]= %f \n",i,a3[i],i,a4[i]);
		printf(" c[%ld]= %f \n",i,c[i]);
	}
	printf(" s2= %f \n",s2);
	exit (0);
}
 

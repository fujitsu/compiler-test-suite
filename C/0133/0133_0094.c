#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float c[20][20];

	union data1{
		float a1[20][20];
		float a2[20][20];
	}uni1;
	union data2{
		float b[20][20];
		float d1[10][10];
		float d2[10][10];
	}uni2;
	long int nn=10;
	long int i,j;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			uni1.a1[j][i]=1.0;
			uni2.b[j][i]=2.0;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			c[j][i]=3.0;
		}
	}
	for(i=0;i<nn;i++)
	{
		for(j=0;j<nn;j++)
		{
			uni1.a1[j][i]=c[j][i]-uni2.d1[j][i];
			uni2.d2[j][i]=c[j][i]+c[j+nn][i+nn];
		}
		for(j=0;j<nn;j++)
		{
			uni2.b[j][i]=uni1.a2[j][i+10]+c[j][i];
		}
	}
	printf("  ***  *** \n");
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("a1[%ld][%ld]=%g , b[%ld][%ld]=%g\n",j,i,uni1.a1[j][i],
			    j,i,uni2.b[j][i]);
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[20][20];
} a040;
int main()
{
	long int j1=1,j2=-2,j3=3,j4=-4,j5=5,j6=-6;
	long int i1,i2,i,j,k=0;
	for(j=0;j<20;j++)
	{
		for(i=0;i<20;i++)
		{
			a040.x[i][j]=32.0;
		}
	}
	for(i1=0;i1<20;i1++)
	{
		for(i2=0;i2<20;i2++)
		{
			a040.x[i1][i2]=(i1-9)*(i2-9)+10;
		}
	}
	j1=1;
	j2=-j1-1;
	j3=-j2+1;
	j4=-j3-1;
	j5=-j4+1;
	j6=-j5-1;
	printf("  J1=%d  J2=%d  J3=%d  J4=%d  J5=%d  J6=%d  \n"
	    ,j1,j2,j3,j4,j5,j6);
	for(i1=11;i1>5;i1--)
	{
		for(i2=6;i2<12;i2++)
		{
			a040.x[i1+j2][i2]=a040.x[i1][i2]+(9-i2)+j2;
			a040.x[i1+j3][i2]=a040.x[i1][i2]+(9-i2)+j3;
			a040.x[i1+j4][i2]=a040.x[i1][i2]+(9-i2)+j4;
			a040.x[i1+j5][i2]=a040.x[i1][i2]+(9-i2)+j5;
			a040.x[i1+j6][i2]=a040.x[i1][i2]+(9-i2)+j6;
			a040.x[i1+j2][i2+j2]=(9-i1)+j2;
			a040.x[i1+j3][i2+j3]=(9-i1)+j3;
			a040.x[i1+j4][i2+j4]=(9-i1)+j4;
			a040.x[i1+j5][i2+j5]=(9-i1)+j5;
			a040.x[i1+j5][i2+j6]=(9-i1)+j6;
		}
	}
	printf("            *=*=* A040[0:19][0:19] *=*=* \n");
	for(j=0;j<20;j++)
	{
		for(i=0;i<20;i++)
		{
			k++;
			printf("%16.7f=[%02ld][%02ld]|",a040.x[i][j],i,j);
			if ((k%3)==0) printf("\n");
		}
	}

	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a040[13][13][13];
	float b040[13][13][13];
	long int i1,i2,i3,j1,j2,j3;
	long int i,j,k,l=0;
	for(k=0;k<13;k++)
	{
		for(j=0;j<13;j++)
		{
			for(i=0;i<13;i++)
			{
				a040[i][j][k]=16.0;
				b040[i][j][k]=32.0;
			}
		}
	}
	for(i1=0;i1<12;i1++)
	{
		for(i2=0;i2<12;i2++)
		{
			for(i3=0;i3<12;i3++)
			{
				a040[i1][i2][i3]=(i1-7)+(i2-7)+(i3-7);
				b040[i1][i2][i3]=(i1-7)+(i2-7)+(i3-7);
			}
		}
	}
	j1=1;
	j2=2;
	j3=3;
	for(i1=2;i1<10;i1+=j1)
	{
		for(i2=2;i2<13;i2+=j2)
		{
			for(i3=2;i3<13;i3+=j3)
			{
				a040[i1+j3][i2][i3]=(i1-7)+(i2-7)+(i3-7);
				b040[i1][i2][i3]=
				    a040[i1+j3][i2][i3]+(i1-7)+(i2-7)+(i3-7);
				a040[i1][i2-j2][i3]=(i1-7)+(i2-7)+(i3-7);
				b040[i1][i2][i3]=
				    a040[i1][i2-j2][i3]+(i1-7)+(i2-7)+(i3-7);
				b040[i1*02-i1][i2*02-i2][i3*02-i3]=
				    a040[i1][i2][i3]+(i1-7)+(i2-7)+(i3-7);
			}
		}
	}
	printf("   =*=*= A040(-07:+5,-07:+5,-07:+5) =*=*= \n");
	for(k=0;k<13;k++)
	{
		for(j=0;j<13;j++)
		{
			for(i=0;i<13;i++)
			{
				l++;
				printf("  %16.7f  ",a040[i][j][k]);
				if ((l%3)==0) printf("\n");
			}
		}
	}
	l=0;
	printf("   =*=*= B040(-07:+5,-07:+5,-07:+5) =*=*= \n");
	for(k=0;k<13;k++)
	{
		for(j=0;j<13;j++)
		{
			for(i=0;i<13;i++)
			{
				l++;
				printf("  %16.7f  ",b040[i][j][k]);
				if ((l%3)==0) printf("\n");
			}
		}
	}
	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[40][40];
}a040;
int main()
{
	long int j1=1,j2=-2,j3=3,j4=-4,j5=5,j6=-6;
	long int i,j,k,i1,i2;
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			a040.x[i][j]=16.0;
		}
	}
	j1=+1;
	j2=-2;
	j3=+3;
	j4=-4;
	j5=+5;
	j6=-6;
	for(i1=9;i1<30;i1++){
		for(i2=29;i2>8;i2--){
			a040.x[i1][i2]=a040.x[i1][i2]+(i1-20)+(i2-20);
		}
	}
	for(i1=9;i1<30;i1++){
		for(i2=29;i2>8;i2--){
			a040.x[i1+j2][i2]=a040.x[i1][i2]+(i2-19)+j2;
			a040.x[i1+j3][i2]=a040.x[i1][i2]+(i2-19)+j3;
			a040.x[i1+j4][i2]=a040.x[i1][i2]+(i2-19)+j4;
			a040.x[i1+j5][i2]=a040.x[i1][i2]+(i2-19)+j5;
			a040.x[i1+j6][i2]=a040.x[i1][i2]+(i2-19)+j6;
			a040.x[i1+j2][i2+j2]=(i1-19)+j2;
			a040.x[i1+j3][i2+j3]=(i1-19)+j3;
			a040.x[i1+j4][i2+j4]=(i1-19)+j4;
			a040.x[i1+j5][i2+j5]=(i1-19)+j5;
			a040.x[i1+j5][i2+j6]=(i1-19)+j6;
		}
	}
	k=0;
	printf("        *=*=*A040[0:39][0:39]*=*=*\n");
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			k++;
			printf("   %f=[%02d][%02d]|   ",a040.x[i][j],i,j);
			if ((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
 

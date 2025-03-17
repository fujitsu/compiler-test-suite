#include <stdlib.h>
#include <math.h>
#include <stdio.h>










int main()
{
	float a040[100][100];
	long int j1=1,j2=-2,j3=3,j4=-4,j5=5,j6=-6;
	long int i,j,k,i1,i2;
	for(j=0;j<100;j++){
		for(i=0;i<100;i++){
			a040[i][j]=0.13;
		}
	}
	for(i1=79;i1>=19;i1-=j1){
		for(i2=79;i2>=19;i2-=j5){
			a040[i1+j2][i2]=a040[i1][i2]+(49-i2)+j2;
			a040[i1+j3][i2]=a040[i1][i2]+(49-i2)+j3;
			a040[i1+j4][i2]=a040[i1][i2]+(49-i2)+j4;
			a040[i1+j5][i2]=a040[i1][i2]+(49-i2)+j5;
			a040[i1+j6][i2]=a040[i1][i2]+(49-i2)+j6;
			a040[i1+j2][i2+j2]=(49-i1)+j2;
			a040[i1+j3][i2+j3]=(49-i1)+j3;
			a040[i1+j4][i2+j4]=(49-i1)+j4;
			a040[i1+j5][i2+j5]=(49-i1)+j5;
			a040[i1+j5][i2+j6]=(49-i1)+j6;
		}
	}
	k=0;
	for(j=0;j<100;j++){
		for(i=0;i<100;i++){
			k++;
			printf("   %7.1f=[%ld][%ld]|   ",a040[i][j],i,j);
			if ((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	exit (0);
}

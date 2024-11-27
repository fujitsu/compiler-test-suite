#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a040[40][40];
} t;
int main()
{
	long int j1=1,j2=-2,j3=3,j4=-4,j5=5,j6=-6;
	long int i1,i2,i,j,k;
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			t.a040[i][j]=16.0;
		}
	}
	for(i1=0;i1<40;i1++){
		for(i2=0;i2<40;i2++){
			t.a040[i1][i2]=(i2-19)+j2;
		}
	}
	j1=1;
	j2=-2;
	j3=3;
	j4=-4;
	j5=5;
	j6=-6;
	for(i1=10;i1<30;i1+=j1){
		for(i2=10;i2<30;i2+=j3){
			t.a040[i1+j2][i2]=t.a040[i1][i2]+(i2-19)+j2;
			t.a040[i1+j3][i2]=t.a040[i1][i2]+(i2-19)+j3;
			t.a040[i1+j4][i2]=t.a040[i1][i2]+(i2-19)+j4;
			t.a040[i1+j5][i2]=t.a040[i1][i2]+(i2-19)+j5;
			t.a040[i1+j6][i2]=t.a040[i1][i2]+(i2-19)+j6;
			t.a040[i1+j2][i2+j2]=(i1-19)+j2;
			t.a040[i1+j3][i2+j3]=(i1-19)+j3;
			t.a040[i1+j4][i2+j4]=(i1-19)+j4;
			t.a040[i1+j5][i2+j5]=(i1-19)+j5;
			t.a040[i1+j5][i2+j6]=(i1-19)+j6;
		}
	}
	k=0;
	printf("         *=*=*=*=*A040[0:39][0:39)*=*=*=*=*\n");
	for(j=0;j<40;j++){
		for(i=0;i<40;i++){
			k++;
			printf("%16.7f=[%02d][%02d]|",t.a040[i][j],i,j);
			if ((k%3)==0) printf ("\n");
		}
	}

	printf("\n");
	exit (0);
}
 

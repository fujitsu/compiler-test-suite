#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a[10][20];
} tag1;
struct st2{
  float b[10][10];
} tag2;
int main()
{
	long int i,j,k;
	for(j=0;j<20;j++){
		for(i=0;i<10;i++){
			tag1.a[i][j]=1.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			tag2.b[i][j]=2.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			tag1.a[i][j]=tag1.a[i][j+1]+tag2.b[i][j];
		}
	}
	k=0;
	for(j=0;j<20;j++){
		for(i=0;i<10;i++){
			printf("  A[%02d][%02d] ==>%10.1f",i,j,tag1.a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}

	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub2(float a[10][3],float b[3],long int n,long int m);
int sub1(float a[10][3],long int n,long int m);

struct st1{
        float x[10][3];
} a;
struct st2{
        float x[3];
} b;
int main()
{
	long int i,j,k;
	for(i=0;i<0;i++){
	        b.x[i]=0.0;
	}
	for(i=0,j=0;i<10;i++){
		a.x[i][j]=3.0;
	}
	for(i=0,j=1;i<10;i++){
		a.x[i][j]=4.0;
	}
	for(i=0,j=2;i<10;i++){
		a.x[i][j]=5.0;
	}
	sub1(a.x,10,3);
	k=0;
	for(j=0;j<3;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	sub2(a.x,b.x,10,3);
	k=0;
	for(j=0;j<3;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a.x[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	for(i=0;i<3;i++){
		printf("  B[%d]==>%9.1f  ",i,b.x[i]);
	}
	printf("\n");
	exit (0);
}
int sub1(float a[10][3],long int n,long int m)
{
	long int i,j;
	float s;
	for(i=0;i<m;i++){
		s=i+1;
		for(j=0;j<n-1;j++){
			a[j+1][i]=a[j][i]+s;
		}
	}
	return 0;
}
int sub2(float a[10][3],float b[3],long int n,long int m)
{
	long int i,j;
	float s;
	for(i=0;i<m;i++){
		s=i+1;
		for(j=0;j<n;j++){
			a[j][i]-=(m+1);
		}
		b[i]=s;
	}
	return 0;
}


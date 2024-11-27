#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int mult(float e[2][2], float c[2][2], float b[2][2], long int n);
int sweep(float a[2][2], float b[2][2], long int n);

struct st1{
        float x[4];
} a,b,c,e;
int main() {
	long int i;
        a.x[0]=3.0;
        a.x[1]=2.0;
        a.x[2]=1.0;	
        a.x[3]=1.0;
	for(i=0;i<4;i++){
		c.x[i]=a.x[i];
		e.x[i]=0.0;
	}
	printf("  ORIGINAL\n");
	for(i=0;i<4;i++){
		printf("a[%ld] => %f\n",i,a.x[i]);
	}
	sweep(a.x,b.x,2);
	printf("  RESULT A\n");
	for(i=0;i<4;i++){
		printf("a[%ld] => %f\n",i,a.x[i]);
	}
	printf("  RESULT B\n");
	for(i=0;i<4;i++){
		printf("b[%ld] => %f\n",i,b.x[i]);
	}
	mult(e.x,c.x,b.x,2);
	printf("  UNIT\n");
	for(i=0;i<4;i++){
		printf("e[%ld] => %f\n",i,e.x[i]);
	}
	exit (0);
}
int sweep(a,b,n)
long int n;
float a[2][2],b[2][2];
{
	long int i,k,j;
	float w,s;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			b[i][j]=0.0;
		}
		b[i][i]=1.0;
	}
	for(k=0;k<n;k++){
		w=a[k][k];
		for(i=0;i<n;i++){
			a[i][k]=a[i][k]/w;
			b[i][k]=b[i][k]/w;
		}
		for(j=0;j<n;j++){
			if (j != k){
				s=a[k][j];
				for(i=0;i<n;i++){
					a[i][j]=a[i][j]-s*a[i][j];
					b[i][j]=b[i][j]-s*b[i][j];
				}
			}
		}
		return 0;
	}
}
int mult(e,c,b,n)
long int n;
float e[2][2],c[2][2],b[2][2];
{
	long int i,k,j;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			e[i][j]=0.0;
			for(k=0;k<n;k++){
				e[i][j]=c[i][j]*b[k][j]+e[i][j];
			}
		}
	}
	return 0;
}


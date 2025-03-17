#include <stdlib.h>
#include <math.h>
#include <stdio.h>











typedef struct{
	float real;
	float imag;
}complex8;
int main()
{
	float a[3][3][3],b[3][3][3];
	double d[3][3][3];
	long int i1,i2,i3,i,j,k,p=0;
	float t;
	complex8 cs1;
	cs1.real=1.0;
	cs1.imag=2.0;
	for(k=0;k<3;k++){
		for(j=0;j<3;j++){
			for(i=0;i<3;i++){
				p++;
				if(p<=9) b[i][j][k]=1.0;
				else if(p<=18) b[i][j][k]=2.0;
				else b[i][j][k]=3.0;
			}
		}
	}
	for(i1=0;i1<3;i1++){
		for(i2=0;i2<3;i2++){
			d[i1][i2][0]=-cs1.imag;
			d[i1][i2][1]=-cs1.imag+2;
			d[i1][i2][2]=-cs1.imag*3;
			for(i3=0;i3<3;i3++){
				t=b[i1][i2][i3]*2;
				a[i1][i2][i3]=t-(cs1.real+cs1.imag);
			}
		}
	}
	for(k=0;k<3;k++){
		for(j=0;j<3;j++){
			for(i=0;i<3;i++){
				printf("   D[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",d[i][j][k]);
			}
		}
	}
	for(k=0;k<3;k++){
		for(j=0;j<3;j++){
			for(i=0;i<3;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	printf("  T ==>  %16.7f \n",t);
	exit (0);
}

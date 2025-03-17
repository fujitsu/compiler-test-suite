#include <stdlib.h>
#include <math.h>
#include <stdio.h>











typedef struct{
	float real;
	float imag;
}complex8;
int main()
{
	float b[10][10][10];
	double d[10][10];
	complex8 c[10][10][5];
	double ds;
	complex8 cs;
	long int n=2,m1=0,m2=0;
	long int i1,i2,i3,i,j,k;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			d[j][k]=9.0;
			for(i=0;i<10;i++){
				b[i][j][k]=2.0;
			}
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				c[i][j][k].real=3.0;
				c[i][j][k].imag=0.0;
			}
		}
	}
	for(i1=0;i1<10;i1+=n){
		cs.real=(float)(i1+1);
		cs.imag=(float)(-i1+1);
		for(i2=0;i2<10;i2+=3){
			ds=cs.real*(i2+1)+(i2+1)*2*cs.imag-d[i1][i2];
			for(i3=0;i3<5;i3++){
				c[i1][i2+m2][i3+m1].real=ds;
				c[i1][i2+m2][i3+m1].imag=0;
				c[i1+1][i2+m1][i3+m2].real=ds*2;
				c[i1+1][i2+m1][i3+m2].imag=0*2;
			}
			b[i1][i2][3]=(cs.real+cs.imag)+ds;
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   C[%d][%d][%d] ==>",i,j,k);
				printf(" <real>%16.7f \n",c[i][j][k].real);
				printf("                  <imag>%16.7f \n",c[i][j][k].imag);
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   B[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",b[i][j][k]);
			}
		}
	}
	printf("  DS ==>  %16.7f \n",ds);
	printf("  CS <real> ==>  %16.7f \n",cs.real);
	printf("  CS <imag> ==>  %16.7f \n",cs.imag);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20][5],b[20][20][5];
	long int i1,i2,i3,i4,i5,i6,i7,i8,i9,i10;
	long int n=10;
	long int j=1;
	long int k=1;
	long int l=1;
	long int m,o,p;
	for(p=0;p<20;p++){
		for(o=0;o<20;o++){
			for(m=0;m<5;m++){
				b[p][o][m]=1;
			}
		}
	}
	printf("\n");
	i1=1;
	i2=1;
	i3=1;
	i4=1;
	i5=1;
	i6=1;
	i7=1;
	i8=1;
	i9=1;
	i10=1;
	for(m=0;m<n;m++)
	{
		a[m][j][k]=i10*b[m][j][l];
		i1=i1+i10;
		i2=i2+i10;
		i3=i3+i10;
		i4=i4+i10;
		i5=i5+i10;
		i6=i6+i10;
		i7=i7+i10;
		i8=i8+i10;
		i9=i9+i10;
	}
	printf(" i1= %ld  i2= %ld  i3= %ld \n",i1,i2,i3);
	printf(" i4= %ld  i5= %ld  i6= %ld \n",i4,i5,i6);
	printf(" i7= %ld  i8= %ld  i9= %ld \n",i7,i8,i9);
	printf(" i10= %ld  a[9][1][1]= %f \n",i10,a[9][1][1]);
	exit (0);
}
 

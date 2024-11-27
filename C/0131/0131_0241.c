#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10],b[10],c[10],d[10];
	int  i,j,k,l;
	a[0]=b[0]=c[0]=d[0]=10;
	for(i=1,j=11,k=21,l=31;i<10,j<20,k<30,l<40;i++,j++,k++,l++){
		a[i]=a[0]+10;
		b[j-10]=a[0]+20;
		c[k-20]=a[0]+30;
		d[l-30]=a[0]+40;
	}
	for(i=0;i<10;i++){
		printf("***** %d ***** \n",i);
		printf("A[%d] = %ld \n",i,a[i]);
		printf("B[%d] = %ld \n",i,b[i]);
		printf("C[%d] = %ld \n",i,c[i]);
		printf("D[%d] = %ld \n",i,d[i]);
	}
	exit (0);
}

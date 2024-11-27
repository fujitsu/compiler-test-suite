#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(double a[5][5][5],long int n);

int main() {
	int i,j,k,l;
	double a[5][5][5],*p;
	for(l=1;l<3;l++) {
		for(i=0;i<5;i++)
			for(j=0;j<5;j++)
				for(k=0;k<5;k++)  {
					a[i][j][k] = sin(10.0/M_PI*(double)(i+j+k+l));
				}
		for(i=0;i<5;i++)    {
			a[i][i][i] /= cos(5.0/M_PI);
		}
		p = &a[0][0][0];
		printf("< case-1 >\n");
		for(i=0;i<125;i+=5){
			printf("p+%d->%g  p+%d->%g  p+%d->%g  p+%d->%g  p+%d->%g\n",
			    i,*(p+i),i+1,*(p+i+1),i+2,*(p+i+2),i+3,*(p+i+3),i+4,*(p+i+4));
		}
	}
	func(a,3);
	printf("< case-2 >\n");
	for(i=0;i<125;i+=5){
		printf("p+%d->%g  p+%d->%g  p+%d->%g  p+%d->%g  p+%d->%g\n",
		    i,*(p+i),i+1,*(p+i+1),i+2,*(p+i+2),i+3,*(p+i+3),i+4,*(p+i+4));
	}
	exit (0);
}
int func(double a[5][5][5],long int n) {
	double *p;
	long int i,j,k,l;
	for(l=1;l<n;l++) {
		for(i=0;i<5;i++)
			for(j=0;j<5;j++)
				for(k=0;k<5;k++) {
					a[i][j][k] *= tan(fabs(a[i][j][k])*l);
					if(k<2) a[i][j][k] -= M_PI;
					else a[i][j][k] += M_PI;
				}
		p = &a[0][0][0];
		i = 0;
		while(i < 125) {
			*(p+i) = sin(*(p+i));
			if(i < 60) *(p+i) = fabs(*(p+i));
			i++;
		}
	}
}

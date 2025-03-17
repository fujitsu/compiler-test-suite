#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10],b[10][10],c[10][10],
	d[10][10],e[10][10],f[10][10];
	long int i,j;
	float s,t;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=1.0;
			b[i][j]=2.0;
			c[i][j]=3.0;
			d[i][j]=4.0;
			e[i][j]=5.0;
			f[i][j]=6.0;
		}
	}
	s=0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=b[i][j]+c[j][i];
		}
	}
	for(i=0;i<10;i++){
		t=a[0][i];
		for(j=0;j<10;j++){
			d[i][j]=b[j][i]/t;
		}
	}
	for(i=0;i<10;i++){
		t=e[0][i];
		for(j=0;j<10;j++){
			f[i][j]=b[j][i]-t;
		}
	}
	printf("  ***** 2314 *****\n");
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" a[%ld][%ld] => %f        b[%ld][%ld] => %f\n",
			    i,j,a[i][j],i,j,b[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" c[%ld][%ld] => %f        d[%ld][%ld] => %f\n",
			    i,j,c[i][j],i,j,d[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" e[%ld][%ld] => %f        f[%ld][%ld] => %f\n",
			    i,j,e[i][j],i,j,f[i][j]);
		}
	}
	printf(" t => %f\n",t);
	exit (0);
}

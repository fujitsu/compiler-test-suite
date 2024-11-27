#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10];
} a,b,c,d,e,f;
int main(){
	long int i,j;
	float s,t;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a.x[i][j]=1.0;
			b.x[i][j]=2.0;
			c.x[i][j]=3.0;
			d.x[i][j]=4.0;
			e.x[i][j]=5.0;
			f.x[i][j]=6.0;
		}
	}
	s=0;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a.x[i][j]=b.x[i][j]+c.x[j][i];
		}
	}
	for(i=0;i<10;i++){
		t=a.x[0][i];
		for(j=0;j<10;j++){
			d.x[i][j]=b.x[j][i]/t;
		}
	}
	for(i=0;i<10;i++){
		t=e.x[0][i];
		for(j=0;j<10;j++){
			f.x[i][j]=b.x[j][i]-t;
		}
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" a[%ld][%ld] => %f        b[%ld][%ld] => %f\n",
			    i,j,a.x[i][j],i,j,b.x[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" c[%ld][%ld] => %f        d[%ld][%ld] => %f\n",
			    i,j,c.x[i][j],i,j,d.x[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" e[%ld][%ld] => %f        f[%ld][%ld] => %f\n",
			    i,j,e.x[i][j],i,j,f.x[i][j]);
		}
	}
	printf(" t => %f\n",t);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][6][6],b[10][6][6],c[1000][6][6],d[25][1000];
	long int l,i,m,k,j,o=0;
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				a[i][j][k]=3.5;
				b[i][j][k]=3.5;
				o++;
				if(o<=60) c[i+990][j][k]=3.5;
				else c[i+990][j][k]=-9.125;
			}
		}
	}
	for(i=990;i<1000;i++){
		l=(i+1)/2;
		for(j=0;j<6;j++){
			m=(i+1)/(j+1);
			for(k=0;k<6;k++){
				a[i-990][k][j]=(b[i-990][k][j]+c[i][k][j])*m;
			}
			d[j+19][i]=m+(float)l;
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("  A[%d][%d][%d] ==>  %16.7f\n",i,j,k,a[i][j][k]);
			}
		}
	}
	for(j=990;j<1000;j++){
		for(i=19;i<25;i++){
			printf("  D[%d][%d] ==>  %16.7f\n",i,j,d[i][j]);
		}
	}
	printf("  M=  %d\n  L=  %d\n",m,l);
	for(i=990;i<995;i++){
		l=(i+1)/2;
		for(j=0;j<6;j++){
			m=(i+1)/(j+1);
			for(k=0;k<6;k++){
				a[i-990][k][j]=(b[i-990][k][j]+c[i][k][j])*m;
			}
			d[j+19][i]=m+(float)l;
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("  A[%d][%d][%d] ==>  %16.7f\n",i,j,k,a[i][j][k]);
			}
		}
	}
	for(j=990;j<1000;j++){
		for(i=19;i<25;i++){
			printf("  D[%d][%d] ==>  %16.7f\n",i,j,d[i][j]);
		}
	}
	exit (0);
}

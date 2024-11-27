#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int a[10][10],b[10][10];
	int c[10],d[10];
	int e[10],f[10];
	int g[10],i,j,k,n,m;
	for(i=0;i<10;i++)
	{
		c[i]=d[i]=e[i]=f[i]=g[i]=0;
		for(j=0;j<10;j++)
		{
			a[i][j]=0;
			b[i][j]=0;
		}
	}
	m=0;

	for( i=0;i<10;i+=1){
		a[i][m]=i;
		n=0;

		for( j=0;j<10;j+=1){
			b[i][j]=a[i][j];

			for( k=0;k<n;k+=1){
				a[k][n]=k;
			}
			n=n+1;
		}
		m=m+1;
	}
	if(m>1000) {
		for(i=0;i<10;i++)for(j=0;j<10;j++)
			printf(" %d  %d |",a[i][j],b[i][j]);
		printf("\n");
	}
	else{
		printf("%d %d \n",m,n);
	}
	
	n=1;
	for( i=0;i<10;i+=1){
		c[i]=n;
		for( j=0;j<10;j+=1){
			n=n+1;
		}
		d[i]=c[i]*i;
	}
	for(i=0;i<10;i++)
		printf(" %d  %d |",c[i],d[i]);
	printf("\n %d \n",n);
	
	n=1;
	for( i=0;i<10;i+=1){
		for( j=0;j<10;j+=1){
			n=n+1;
		}
		e[i]=n;
	}
	for(i=0;i<10;i++)
		printf(" %d  ",e[i]);
	printf("\n %d \n",n);
	
	n=1;
	for( i=0;i<10;i+=1){
		for( j=0;j<10;j+=1){
			n=n+1;
		}
		f[i]=n;
		g[i]=f[i];
	}
	for(i=0;i<10;i++)
		printf(" %d  %d |",f[i],g[i]);
	printf("\n %d \n",n);
	exit (0);
}

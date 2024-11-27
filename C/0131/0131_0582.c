#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int k;  
	int i=0,j,*p,*q;
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int b[10]={
		1,2,3,4,5,6,7,8,9,0	};
	int c[10]={
		1,0,0,1,1,0,1,0,0,1	};
	int d[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int e[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int f[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int g[10]={
		0,0,0,0,0,0,0,0,0,0	};
	p = &c[0];
	q = &f[0];
	for(j=0,k=1;i<10;i+=1)
		if (c[e[i]]==0&&d[i]!=1) a[j++] = b[*(q+i)] + *(p+i) ;

	for(j=0,k=0,i=0;i<10;i+=1)
		if (*(p+i)==1) d[*(q+i)] = b[i] + c[e[j++]];
		else g[*(q+i)] = b[c[e[*(q+k++)]]] - e[b[i]] ;
	for(i=0;i<10;i++) printf("%d ",a[i]) ;
	printf("\n");
	for(i=0;i<10;i++) printf("%d ",d[i]) ;
	printf("\n");
	for(i=0;i<10;i++) printf("%d ",g[i]) ;
	printf("\n");
	exit (0);
}

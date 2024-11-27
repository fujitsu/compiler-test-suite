#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n;
	double a[20],b[20];
	float  c[20],d[20];
	long int e[20],f[20];
	unsigned long int g[20],h[20];
	long int l[20];
	for(i=0;i<20;i++){
		a[i]=2.0;
		b[i]=(double)i;
		c[i]=1.0;
		d[i]=(float)(10-i);
		e[i]=i%3;
		f[i]=10-i;
		g[i]=i%5;
		h[i]=b[i]+1.0;
		l[i]=19-i;
	}
	
	for(i=0;i<20;i++){
		a[i]=a[i]+b[i];
		c[i]=c[i]*d[i];
		e[i]=e[i]-f[i];
		g[i]=g[i]+h[i];
	}
	
	for(i=0,n=0;i<20;i+=3){
		a[i]=a[i]+b[i];
		c[n]=c[n]-d[i];
		e[i]=e[i]+f[i];
		g[n]=g[n]*h[i];
		n+=2;
	}
	printf(" n= %ld \n",n);
	
	for(i=0;i<20;i++){
		n=l[i];
		b[n]=a[i]-a[n];
		d[n]=c[n]*c[i];
		f[n]=e[n]+e[i];
		h[n]=g[i]+g[n];
	}
	printf(" ***  *** no.1 *** \n");
	for(i=0;i<20;i++){
		printf(" a= %e  b= %e  c= %f  d= %f \n",a[i],b[i],c[i],d[i]);
		printf(" e= %ld  f= %ld  g= %lu  h= %u \n",e[i],f[i],g[i],h[i]);
	}
	
	for(i=1;i<20;i++){
		n=l[i]%3;
		if (n==0){
			a[i]=a[i]+b[i];
			c[i]=c[i]+d[i];
			e[i]=e[i]+f[i];
			g[i]=(g[i]<h[i]);
		}
	}
	
	for(i=1,n=0;i<20;i+=3){
		if ((i%3)==2){
			a[n]=a[n]+b[i];
			c[n]=d[i]-c[n];
			e[i]=e[i]*f[n];
			g[i]=g[i]+h[n];
		}
		n+=2;
	}
	
	for(i=1;i<20;i++){
		if ((i%3)==1){
			n=l[i];
			b[n]=a[n]+a[i];
			d[n]=c[i]-c[n];
			f[n]=e[n]*e[i];
			h[n]=g[i]+g[n];
		}
	}
	printf(" ***  *** no.2 *** \n");
	for(i=0;i<20;i++){
		printf(" a= %e  b= %e  c= %f  d= %f \n",a[i],b[i],c[i],d[i]);
		printf(" e= %ld  f= %ld  g= %lu  h= %lu \n",e[i],f[i],g[i],h[i]);
	}
exit (0);
}

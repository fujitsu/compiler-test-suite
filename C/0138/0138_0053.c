#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[10]={
				2.,2.,2.,2.,2.,2.,2.,2.,2.,2.		};
	double b[10]={
				4.,4.,4.,4.,4.,4.,4.,4.,4.,4.		};
	double c[10]={
				8.,8.,8.,8.,8.,8.,8.,8.,8.,8.		};
	double g[10]={
				0.,0.,0.,0.,0.,0.,0.,0.,0.,0.		};
	double d[10]={
				0.,0.,0.,0.,0.,0.,0.,0.,0.,0.		};
	double e[10][10] ;
	double f[10]={
				2.,2.,2.,2.,2.,2.,2.,2.,2.,2.		};
	double x[1024],y[1024];
	long int n=785,i,j;
	for(i=0;i<1024;i++)
	{
		x[i]=8.0;
		y[i]=9.0;
	}
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			d[i]=f[i];
		}
		for(i=1;i<9;i++){
			g[i]=(a[i]*b[i]);
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			f[i]=(a[i]*b[i]);
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			c[i]=f[i];
		}
		for(i=0;i<10;i++){
			b[i]=f[i];
		}
		for(i=1;i<9;i++){
			a[i]=(a[i]*b[i]);
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<n;i++){
			y[i]=x[i]*2.6;
		}
	}
	for(j=0;j<5;j++){
		for(i=n;i<n+100;i++){
			y[i]=x[i]*2.6;
		}
		for(i=n+102;i<n+105;i++){
			y[i]=x[i]*1.6;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<n-30;i++){
			x[i]=y[i]*3.0;
		}
		for(i=4;i<10;i++){
			f[i]=b[i]*1.6;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<1024;i++){
			y[i]=x[i]*3.0;
		}
	}
	printf(" *****  *****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld]= %f  g[%ld]= %f \n",i,d[i],i,g[i]);
		printf(" c[%ld]= %f \n",i,c[i]);
		printf(" a[%ld]= %f  b[%ld]= %f \n",i,a[i],i,b[i]);
		printf(" f[%ld]= %f \n",i,f[i]);
	}
	for(i=0;i<1024;i++){
		printf(" x[%4ld]= %f  y[%4ld]= %f \n",i,x[i],i,y[i]);
	}
	exit (0);
}

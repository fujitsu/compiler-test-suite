#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#define NLOOP 500
int main()
{
	double x[1001],y[1001] ;
	long int l,lw,j,i,jax ;
	for(i=0;i<1001;i++){
		x[i]=1.0;
		y[i]=1.0;
	}
	for(jax=0;jax<NLOOP;jax++)
	{
		for(l=6;l<107;l+=50)
		{
			lw=l;
			for(j=29;j<870;j+=5)
			{
				x[l-1]=x[l-1]-x[lw]*y[j];
				lw=lw+1;
			}
			x[l-1]=y[4]*x[l-1];
		}
	}
	for(i=5;i<106;i++){
		printf("x[%ld]=%g\n",i,x[i]);
	}
	exit (0);
}

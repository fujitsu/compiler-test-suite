#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (float t[10], float u[10]);

int main()
{
	float a[10],b[10];
	float x[10],y[10],z[10];
	float t[10],u[10];
	long int i;
	for(i=0;i<10;i++){
		a[i]=1.0;
	}
	for(i=0;i<10;i++){
		b[i]=2.4;
	}
	for(i=0;i<10;i++){
		x[i]=1.0;
	}
	for(i=0;i<10;i++){
		y[i]=2.4;
	}
	printf("''\n");
	for(i=0;i<10;i++)
	{
		a[i]=a[i]+b[i];
		t[i]=2.0;
		u[i]=5.0;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%g , b[%ld]=%g\n",i,a[i],i,b[i]);
	}
	sub(t,u);
	for(i=0;i<10;i++)
	{
		printf("t[%ld]=%g , u[%ld]=%g\n",i,t[i],i,u[i]);
	}
	for(i=0;i<10;i++)
	{
		z[i]=x[i]+y[i];
	}
	for(i=0;i<10;i++)
	{
		printf("x[%ld]=%g , y[%ld]=%g , z[%ld]=%g\n",i,x[i],i,y[i],
		    i,z[i]);
	}
	exit (0);
}
int sub (float t[10], float u[10])
{
	long int k;
	for(k=0;k<10;k++)
	{
		t[k]=t[k]+u[k];
	}
	return 0;
}

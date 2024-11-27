#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[2000],b[2000];
	long int i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i;
	for(i=0;i<2000;i++)
	{
		b[i]=1;
	}
	printf("\n");
	i1=1;
	i2=1;
	i3=1;
	i4=1;
	i5=1;
	i6=1;
	i7=1;
	i8=1;
	i9=1;
	i10=1;
	for(i=0;i<10;i++)
	{
		a[i]=i10*b[i];
		i1=i1+i10;
		i2=i2+i10;
		i3=i3+i10;
		i4=i4+i10;
		i5=i5+i10;
		i6=i6+i10;
		i7=i7+i10;
		i8=i8+i10;
		i9=i9+i10;
	}
	for(i=0;i<10;i++)
	{
		i10=i10+a[i];
	}
	printf(" *****  ***** \n");
	printf(" i1= %ld  i2= %ld \n",i1,i2);
	printf(" i3= %ld  i4= %ld \n",i3,i4);
	printf(" i5= %ld  i6= %ld \n",i5,i6);
	printf(" i7= %ld  i8= %ld \n",i7,i8);
	printf(" i9= %ld  i10= %ld \n",i9,i10);
	printf(" ***** a[%ld] ***** \n",i);
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f ",i,a[i]);
		if(((i+1)%3 == 0) && (i != 0)) printf("\n");
	}
	printf("\n");
	exit (0);
}
 

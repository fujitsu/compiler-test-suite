#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float a[10];
	float b[]={
		1.1,2.3,-9.5,4.9,-2.8,6.4,3.8,-6.2,4.9,-3.1	};
	float c[]={
		1.1,2.5,7.5,4.9,3.7,5.4,6.9,3.2,3.9,6.7	};
	int m,k,i;
	m=1;
	k=1;
	for(i=0 ; i < 10 ; i++){
		a[i]=b[i+m-k]+c[i];
	}
	for(i=0 ; i < 10 ; i++){
		printf("%3.1f\n",a[i]);
	}
	exit (0);
}
                

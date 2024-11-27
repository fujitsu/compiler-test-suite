#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[100],b[100];
	int i,j;
	for(i=100;i--;){
		a[i]=0.0; 
		b[i]=1.0;
	}
	for( i=1;i<10;i+=1){
		for( j=0;j<10;j+=1){
			a[i]=j+a[i];
		}
		b[i]=a[i];
	}
	for(i=0;i<100;i++) printf("%7.3f ",a[i]); 
	printf("\n");
	for(i=0;i<100;i++) printf("%7.3f ",b[i]); 
	printf("\n");
	exit (0);
}

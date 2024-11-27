#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main(){
	long int a1[10],a2[10],a3[10],c[10]={
				2,2,2,2,2,2,2,2,2,2		};
	long int i , s1 = 1 , s2 = 1 , s3 = 1 ;

	printf("\n");
	for(i=0;i<10;i++){
		a1[i]=s1+c[i];
		a2[i]=s1-c[i];
		a3[i]=s1*c[i];
	}
	for(i=0;i<10;i++){
		printf("%ld %ld %ld %ld %ld %ld %ld \n",a1[i],a2[i],a3[i],s1,s2,s3,c[i]);
	}
	exit (0);
}
 

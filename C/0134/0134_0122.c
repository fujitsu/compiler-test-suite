#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int  a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int  l=0,m=-1,n=2;
	int  i,j;
	for (i=l-(m+(n-2)+1),j=0;i<10-(m+(n-1-1))+1,j<10;i++){
		a[i+(-(m+(n-2)+1))] = j ;
		j++;
	}
	for (i=0;i<10;i++){
		printf("a[%d] = %ld \n",i,a[i]) ;
	}
	exit (0);
}

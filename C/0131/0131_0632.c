#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
#define  NULL  0
int main(){
	char   ss[10] = "ABCDEFGHI";
	char   tt[10] = "BACEFG0IJ";
	int    i ;
	for(i=0;i<10;i++){
		if(strcoll(ss,tt) && ss[i] == tt[i])
			printf("S3(%d),T3(%d) are equal \n",i,i);
		else{
			printf("S3(%d)= %d \n",i,ss[i]);
			printf("T3(%d)= %d \n",i,tt[i]);
			printf(" NOT EQUAL \n");
		}
	}
	exit (0);
}

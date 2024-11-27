#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main() {
	int i,j,k;
	static     float  a[5][30];
	int init_f4();
	int print_f4();
	init_f4(a,150,10.0);
	for( k=0;k<5 ;k+=1){
		for( j=0;j<29;j+=1){
			for( i=0;i<4 ;i+=1){
				a[i][j]= a[i][j]*2.0;
			}
		}
	}
	print_f4("a= ",a,150);
	exit (0);
}
int init_f4(a,len,d)
float *a;
int  len;
float d;
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
}
int print_f4(s,a,len)
char  *s;
float *a;
int  len;
{
	int i,t=0;
	printf("%s",s);
	for(i=0;i<len;i++) {
		printf(" %f",*a);
		if(++t>5) {
			printf("\n");
			t=0;
		}
		a=a+1;
	}
	printf("\n");
}

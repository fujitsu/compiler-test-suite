#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main() {
	int i1,i2,i3;
	static     float  a[10][10][10],b[10][10][10];
	int init_f4();
	int print_f4();
	init_f4(a,1000,10.0);
	for( i3=1;i3<10;i3+=1){
		for( i2=0;i2<10;i2+=1){
			for( i1=0;i1<10;i1+=1){
				b[i3][i2][i1]= a[i3][i2][i1]*2.0;
				b[i3][i2][i1]= b[i3][i2][i1]*8.0;
			}
		}
	}
	print_f4("b= ",b,1000);
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

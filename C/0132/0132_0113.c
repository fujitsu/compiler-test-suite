#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_f4(char *s, float *a, int len);

int main (void) {
	float  s;
	static  float  a[10][10][10][10],b[10][10];
	int i1,i2,i3,i4,i5,i6,i7;
	int init_f4(float *a, int len, float d);
	init_f4(a,10000,20.0);
	init_f4(b,100,30.0);
	for( i4=0;i4<10;i4+=1){
		for( i3=0;i3<10;i3+=1){
			s=b[i3][i4]*2.0;
			for( i2=0;i2<10;i2+=1){
				for( i1=0;i1<10;i1+=1){
					a[i1][i2][i3][i4]= a[i1][i2][i3][i4]*s;
				}
			}
		}
	}
	print_f4("a= ",a,10000);
	print_f4("b= ",b,100);
	exit (0);
}
int init_f4(float *a, int len, float d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
	return 0;
}
int print_f4(char *s, float *a, int len)
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
	return 0;
}

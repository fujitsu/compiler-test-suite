#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_f4 (char *s, float *a, int len);
int sub (float a[10][10][10], float b[10][10], int m);

int main (void) {
	float  a[10][10][10],b[10][10];
	int init_f4(float *a, int len, float d);
	init_f4(a,1000,1.0);
	init_f4(b,100,20.0);
	sub(a,b,10);
	exit (0);
}
int sub (float a[10][10][10], float b[10][10], int m)
{
	int i0,i1,i2,i3,s;
	for( i1=0;i1<10;i1+=1){
		for( i2=0;i2<10;i2+=1){
			s=b[i2][i1];
			for( i3=0;i3<10;i3+=1){
				a[i3][i2][i1]=s;
			}
		}
	}
	print_f4("a= ",a,1000);
	return(0);
}
int init_f4 (float *a, int len, float d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
	return 0;
}
int print_f4 (char *s, float *a, int len)
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

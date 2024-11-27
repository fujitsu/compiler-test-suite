#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_f4(char *s, float *a, int len);
int mkms1(float a[3][3][3][3][3][3][3], float b[3][3][3], int n1, int n2, int n3, int n4, int n5, int n6, int n7, int m1, int m2, int m3, int m4, int m5, int m6, int m7);

int main (void) {
	static float  a[3][3][3][3][3][3][3],b[3][3][3];
	int init_f4(float *a, int len, float d);
	init_f4(a,2187,20.0);
	init_f4(b,27,30.0);
	mkms1(a,b,0,0,0,0,0,0,0,3,3,3,3,3,3,3);
	exit (0);
}
int mkms1(float a[3][3][3][3][3][3][3], float b[3][3][3], int n1, int n2, int n3, int n4, int n5, int n6, int n7, int m1, int m2, int m3, int m4, int m5, int m6, int m7)
{
	int i1,i2,i3,i4,i5,i6,i7;
	for( i7=n7 ;i7<m7 ;i7+=1){
		for( i6=n6 ;i6<m6 ;i6+=1){
			for( i5=n5 ;i5<m5 ;i5+=1){
				b[i5][i6][i7]= b[i5][i6][i7]*2.0;
				for( i4=n4 ;i4<m4 ;i4+=1){
					for( i3=n3 ;i3<m3 ;i3+=1){
						for( i2=n2 ;i2<m2 ;i2+=1){
							for( i1=n1 ;i1<m1 ;i1+=1){
								a[i1][i2][i3][i4][i5][i6][i7]=
								    a[i1][i2][i3][i4][i5][i6][i7]*2.0;
							}
						}
					}
				}
			}
		}
	}
	print_f4("a= ",a,2187);
	print_f4("b= ",b,27);
	return(0);
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

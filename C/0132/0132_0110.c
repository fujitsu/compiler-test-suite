#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_f4(char *s, float *a, int len);

int main (void) {
	int i1,i2,i3,i4,i5,i6,i7;
	static float  a[3][3][3][3][3][3][3],b[3][3][3];
	int init_f4(float *a, int len, float d);
	init_f4(a,2187,20.0);
	init_f4(b,27,30.0);
	for( i7=0 ;i7<3 ;i7+=1){
		for( i6=0 ;i6<3 ;i6+=1){
			for( i5=0 ;i5<3 ;i5+=1){
				b[i7][i6][i5]= b[i7][i6][i5]*2.0;
				for( i4=0 ;i4<3 ;i4+=1){
					for( i3=0 ;i3<3 ;i3+=1){
						for( i2=0 ;i2<3 ;i2+=1){
							for( i1=0 ;i1<3 ;i1+=1){
								a[i7][i6][i5][i4][i3][i2][i1]=
								    a[i7][i6][i5][i4][i3][i2][i1]*2.0;
							}
						}
					}
				}
			}
		}
	}
	print_f4("a= ",a,2187);
	print_f4("b= ",b,27);
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

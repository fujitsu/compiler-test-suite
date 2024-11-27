#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int print_f4 (char *s, float *a, int len);
int main() {
	static  float  r4s1,r4s2,r4s3,r4s4,r4s5,r4s6,
	r4a7[5][5][5][5][5][5][5],
	r4a6[5][5][5][5][5][5],
	r4a5[5][5][5][5][5],
	r4a4[5][5][5][5],
	r4a3[5][5][5],
	r4a2[5][5],
	r4a1[5];
	int i1,i2,i3,i4,i5,i6,i7;
	int init_f4(float *a, int len, float d);
	init_f4(r4a6,15625,60.0);
	init_f4(r4a5,3125,50.0);
	init_f4(r4a4,625,40.0);
	init_f4(r4a3,125,30.0);
	init_f4(r4a2,25,20.0);
	init_f4(r4a1,5,10.0);
	for( i1=0;i1<5;i1+=1){
		r4s1=r4a1[i1]*2.0;
		for( i2=0;i2<5;i2+=1){
			r4s2=r4a2[i2][i1]*2.0;
			for( i3=0;i3<5;i3+=1){
				r4s3=r4a3[i3][i2][i1]*2.0;
				for( i4=0;i4<5;i4+=1){
					r4s4=r4a4[i4][i3][i2][i1]*2.0;
					for( i5=0;i5<5;i5+=1){
						r4s5=r4a5[i5][i4][i3][i2][i1]*2.0;
						for( i6=0;i6<5;i6+=1){
							r4s6=r4a6[i6][i5][i4][i3][i2][i1]*2.0;
							for( i7=0;i7<5;i7+=1){
								r4a7[i7][i6][i5][i4][i3][i2][i1]=
								    r4s1+r4s2+r4s3+r4s4+r4s5+r4s6;
							}
						}
					}
				}
			}
		}
	}
	print_f4("r4a7= ",r4a7,78125);
	exit (0);
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

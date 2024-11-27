#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_f4(char *s, float *a, int len);
int mkms1(int m1, int m2, int m3, int m4, int m5, int m6, int m7,
	  float r4a1[5], float r4a2[5][5], float r4a3[5][5][5], float r4a4[5][5][5][5],
	  float r4a5[5][5][5][5][5], float r4a6[5][5][5][5][5][5], float r4a7[5][5][5][5][5][5][5]);

int main (void) {
	static float  r4a7[5][5][5][5][5][5][5],
	r4a6[5][5][5][5][5][5],
	r4a5[5][5][5][5][5],
	r4a4[5][5][5][5],
	r4a3[5][5][5],
	r4a2[5][5],
	r4a1[5];
	int init_f4(float *a, int len, float d);
	init_f4(r4a6,15625,60.0);
	init_f4(r4a5,3125,50.0);
	init_f4(r4a4,625,40.0);
	init_f4(r4a3,125,30.0);
	init_f4(r4a2,25,20.0);
	init_f4(r4a1,5,10.0);
	mkms1(5,5,5,5,5,5,5,r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7);
	exit (0);
}
int mkms1(int m1, int m2, int m3, int m4, int m5, int m6, int m7,
	  float r4a1[5], float r4a2[5][5], float r4a3[5][5][5], float r4a4[5][5][5][5],
	  float r4a5[5][5][5][5][5], float r4a6[5][5][5][5][5][5], float r4a7[5][5][5][5][5][5][5])
{
	int i1,i2,i3,i4,i5,i6,i7;
	int r4s1,r4s2,r4s3,r4s4,r4s5,r4s6;
	
	for( i1=0;i1<m1;i1+=1){
		r4s1=r4a1[i1]*2.0;
		for( i2=0;i2<m2;i2+=1){
			r4s2=r4a2[i2][i1]*2.0;
			for( i3=0;i3<m3;i3+=1){
				r4s3=r4a3[i3][i2][i1]*2.0;
				for( i4=0;i4<m4;i4+=1){
					r4s4=r4a4[i4][i3][i2][i1]*2.0;
					for( i5=0;i5<m5;i5+=1){
						r4s5=r4a5[i5][i4][i3][i2][i1]*2.0;
						for( i6=0;i6<m6;i6+=1){
							r4s6=r4a6[i6][i5][i4][i3][i2][i1]*2.0;
							for( i7=0;i7<m7;i7+=1){
								r4a7[i7][i6][i5][i4][i4][i3][i1]=
								    r4s1+r4s2+r4s3+r4s4+r4s5+r4s6;
							}
						}
					}
				}
			}
		}
	}
	print_f4("r4a1= ",r4a1,5);
	print_f4("r4a2= ",r4a2,25);
	print_f4("r4a3= ",r4a3,125);
	print_f4("r4a4= ",r4a4,625);
	print_f4("r4a5= ",r4a5,3125);
	print_f4("r4a6= ",r4a6,15625);
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

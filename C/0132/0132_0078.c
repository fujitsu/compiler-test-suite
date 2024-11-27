#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init_i4 (int *a, int len, int d);
int init_i2 (short int *a, int len, short int d);

static       int  i4a[100],i4b[100][10];
static short int  i2a[100],i2b[100][10];
int main (void) {
	int  i4v1=1,i4v2=2,i4v3=3,i4v4=4;
	short int  i2v1=1,i2v2=2,i2v3=3,i2v4=4;
	int  i,j;
	
	init_i2(i2a,100,1);
	init_i2(i2b,1000,2);
	init_i4(i4a,100,1);
	init_i4(i4b,1000,2);
	
	
	
	for(  i=0;i<90;i+=1){
		i4v1=1+i4a[i]+2+i4a[i+1]+
		    3+i4a[i+2]+4+i4a[i+3];
	}
	printf("%s","TEST NO.1-1  ");
	printf("%d \n",i4v1);
	
	
	
	for(  i=0;i<90;i+=1){
		i4v2=i4a[1]+i4a[i]+i4a[2]+i4a[i+1]+
		    i4a[3]+i4a[i+2]+i4a[4]+i4a[i+3];
	}
	printf("%s","TEST NO.1-2  ");
	printf("%d \n",i4v2);
	
	
	
	for(  i=0;i<90;i+=1){
		i2v1=1+i2a[i]+2+i2a[i+1]+
		    3+i2a[i+2]+4+i2a[i+3];
	}
	printf("%s","TEST NO.2-1  ");
	printf("%d \n",(int)i2v1);
	
	
	
	for(  i=0;i<90;i+=1){
		i2v2=i2a[1]+i2a[i]+i2a[2]+i2a[i+1]+
		    i2a[3]+i2a[i+2]+i2a[4]+i2a[i+3];
	}
	printf("%s","TEST NO.2-2  ");
	printf("%d \n",(int)i2v2);
	
	
	
	for(  i=0;i<90;i+=1){
		for(  j=0;j<10;j+=1){
			i4v3=1+i4b[i][j]+2+i4b[i+1][j]+
			    3+i4b[i+2][j]+4+i4b[i+3][j];
		}
	}
	printf("%s","TEST NO.3-1  ");
	printf("%d \n",i4v3);
	
	
	
	for(  i=0;i<90;i+=1){
		for(  j=0;j<10;j+=1){
			i4v4=i4b[1][1]+i4b[i][j]+i4b[2][1]+i4b[i+1][j]+
			    i4b[3][1]+i4b[i+2][j]+i4b[4][1]+i4b[i+3][j];
		}
	}
	printf("%s","TEST NO.3-2  ");
	printf("%d \n",i4v4);
	
	
	
	for(  i=0;i<90;i+=1){
		for(  j=0;j<10;j+=1){
			i2v3=1+i2b[i][j]+2+i2b[i+1][j]+
			    3+i2b[i+2][j]+4+i2b[i+3][j];
		}
	}
	printf("%s","TEST NO.4-1  ");
	printf("%d  \n",(int)i2v3);
	
	
	
	for(  i=0;i<90;i+=1){
		for(  j=0;j<10;j+=1){
			i2v4=i2b[1][1]+i2b[i][j]+i2b[2][1]+i2b[i+1][j]+
			    i2b[3][1]+i2b[i+2][j]+i2b[4][1]+i2b[i+3][j];
		}
	}
	printf("%s","TEST NO.4-2  ");
	printf("%d \n",(int)i2v4);
	exit (0);
}
int init_i2 (short int *a, int len, short int d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
}
int init_i4 (int *a, int len, int d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
}

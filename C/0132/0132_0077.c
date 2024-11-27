#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int print_i4 (char *s, int *a, int len);
int init_i4 (int *a, int len, int d);

static int  di1[100];
static  int di2[10][10][10][10];

int main (void) {
	int  ti1,ti2,ti3;
	int  i1,i2;
	int  n1,n2,n3,n4,n5;
	int  i;
	int  pci4b,pci4c;
	
	init_i4(di1,100,0);
	init_i4(di2,10000,0);
	
	
	
	
	for(i1=0;i1<100;i1+=1){ 
		ti1=100;
		ti2=100;
		ti3=1+i1+1-i1-1;
		for(i2=i1+1;i2<9;i2+=10){ 
			
			
			pci4b = 1;
			pci4c = pci4b;
			
			n1=i2+pci4c;
			n2=n1+pci4c;
			n3=n2+pci4c;
			n4=n3+pci4c;
			n5=n4+pci4c;
			if(n5>=9) goto L100;
			
			di1[i2+2+i2-3-i2+1]=ti1;
			ti2=di1[i2+2+i2-3-i2+1];
			
			if(di2[i2][ti3][i2][ti3]>=0) goto L100;
			if(ti2>=0) goto L100 ;
L100:
			;
			;
		}
	}
	printf("%d %d %d %d %d \n", n1,n2,n3,n4,n5);
	print_i4("di1 = ",di1,100);
	printf("ti2 = %d \n", ti2);
	exit (0);
}
int init_i4 (int *a, int len, int d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
}
int print_i4 (char *s, int *a, int len)
{
	int i,t=0;
	printf("%s",s);
	for(i=0;i<len;i++) {
		printf(" %d",*a);
		if(++t>24) {
			printf("\n"); 
			t=0; 
		}
		a=a+1;
	}
	printf("\n");
}

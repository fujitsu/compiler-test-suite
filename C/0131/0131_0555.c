#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub1 (int *a, int *b, int *c, int *d, int *e, int *f, int n);

int main()
{
	int i,j,k;
	int a[5],b[5],c[5];
	
	for(i=0;i<5;i++){
		a[i]=1;
		b[i]=2;
		c[i]=3;
	}
	printf("a=  %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	printf("b=  %d %d %d %d %d \n",b[0],b[1],b[2],b[3],b[4]);
	printf("c=  %d %d %d %d %d \n",c[0],c[1],c[2],c[3],c[4]);
	sub1(a,b,c,&a[4],&b[4],&c[4],1);
	exit (0);
}
int sub1 (int *a, int *b, int *c, int *d, int *e, int *f, int n)
{
	int  i;
	int  *s_a,*s_b,*s_c,*s_d,*s_e,*s_f;
	s_a=a;
	s_b=b;
	s_c=c;
	s_d=d;
	s_e=e;
	s_f=f;
	
	
	printf("<< a[i]=a[i]+10  >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		if(n>=0) {
			a[i] = a[i] + 10;
		}
		else {
			a[i] = a[i] + 10;
		}
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	
	printf("<< *b=*b+9       >> \n");
	printf("  -- before --\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	for(i=0;i<5;i++)
	{
		if(n>=0) {
			*b = *b + 9 ;
		}
		else {
			*b = *b + 9 ;
		}
	}
	printf("  == RESULT ==\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	
	
	
	
	printf("<< *a=*a+8       >> \n");
	printf("<< *b=*b+8       >> \n");
	printf("<< *c=*c+8       >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d\n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	printf("b=  %d %d %d %d %d\n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	printf("c=  %d %d %d %d %d\n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	for(i=0;i<5;i++)
	{
		if(n>=0) {
			*a = *a + 8 ;
			*b = *b + 8 ;
			*c = *c + 8 ;
		}
		else {
			*a = *a + 8 ;
			*b = *b + 8 ;
			*c = *c + 8 ;
		}
		if(n>=0) {
			a=a+1;
		}
		if(n>=0) {
			b=n+b;
		}
		if(n>=0) {
			c=c+n;
		}
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	
	
	
	
	printf("<< *d=*d+7       >> \n");
	printf("<< *e=*e+7       >> \n");
	printf("<< *f=*f+7       >> \n");
	printf("  -- before --\n");
	printf("d=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	printf("e=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	printf("f=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	for(i=0;i<5;i++)
	{
		if(n>=0) {
			*d = *d + 7;
			*e = *e + 7;
			*f = *f + 7;
		}
		else {
			*d = *d + 7;
			*e = *e + 7;
			*f = *f + 7;
		}
		if(n>=0) {
			d=d-1;
		}
		if(n>=0) {
			e=e-1;
		}
		if(n>=0) {
			f=f-n;
		}
	}
	printf("  == RESULT ==\n");
	printf("d=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	printf("e=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	printf("f=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub3 (int *a, int *b, int *c, int *d, int *e, int *f, int n);
int sub2 (int *a, int *b, int *c, int *d, int *e, int *f, int n);
int sub1 (int *a1);

int main()
{
	int i;
	int a[5],b[5],c[5];
	int a1[5][5];
	
	for(i=0;i<5;i++){
		a[i]=1;
		b[i]=2;
		c[i]=3;
		a1[0][i]=a1[1][i]=a1[2][i]=a1[3][i]=a1[4][i]=1;
	}
	sub1(a1);
	sub2(a,b,c,&a[4],&b[4],&c[4],1);
	sub3(a,b,c,&a[4],&b[4],&c[4],1);
	exit (0);
}
int sub1 (int *a1)
{
	int  i;
	
	
	for(i=0;i<5;i++)
	{
		a1[i] = 10;
		a1=a1+5;
	}
	a1=a1-25;
	printf("a1[0]= %d %d %d %d %d \n",
	    a1[0],a1[1],a1[2],a1[3],a1[4]);
	a1=a1+5;
	printf("a1[1]= %d %d %d %d %d \n",
	    a1[0],a1[1],a1[2],a1[3],a1[4]);
	a1=a1+5;
	printf("a1[2]= %d %d %d %d %d \n",
	    a1[0],a1[1],a1[2],a1[3],a1[4]);
	a1=a1+5;
	printf("a1[3]= %d %d %d %d %d \n",
	    a1[0],a1[1],a1[2],a1[3],a1[4]);
	a1=a1+5;
	printf("a1[4]= %d %d %d %d %d \n",
	    a1[0],a1[1],a1[2],a1[3],a1[4]);
}
int sub2 (int *a, int *b, int *c, int *d, int *e, int *f, int n)
{
	int  i;
	
	
	
	
	for(i=0;i<5;i=i+3)
	{
		*a = 9;
		a=a+1;
		a=a+1;
	}
	a=a-4;
	printf("a=  %d %d %d %d %d \n",a[0],a[1],a[2],a[3],a[4]);
	
	
	
	
	for(i=0;i<5;i=i+1)
	{
		*d = 8;
		d=d-1;
		if(d==0) {
			d=d-1;
		}
	}
	d=d+1;
	printf("d=  %d %d %d %d %d \n",d[0],d[1],d[2],d[3],d[4]);
}
int * base_add() ;
int sub3 (int *a, int *b, int *c, int *d, int *e, int *f, int n)
{
	int  i;
	int  *s_a,*s_b,*s_c,*s_d,*s_e,*s_f;
	s_a=a;
	s_b=b;
	s_c=c;
	s_d=d;
	s_e=e;
	s_f=f;
	
	
	printf("<< *a=*a+5 >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		*a = *a + 5;
		a=base_add(a);
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	printf("<< *a=7    >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		*f = 7;
		f=a;
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	printf("<< *b=6    >> \n");
	printf("  -- before --\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	for(i=0;i<5;i++)
	{
		*b = 6;
		b=(int *)((long)b*n);
	}
	printf("  == RESULT ==\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	
	
	printf("<< *c=5    >> \n");
	printf("  -- before --\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	for(i=0;i<5;i++)
	{
		*c = 5;
		c=(int *)((long)c/n);
	}
	printf("  == RESULT ==\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
}
int *base_add (int *p)
{
	return(p++);
}

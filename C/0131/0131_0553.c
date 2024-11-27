#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int t_max (int a, int b);
int sub2 (int *a, int *b, int *c, int *d, int *e, int *f, int n);
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
	sub2(a,b,c,&a[4],&b[4],&c[4],1);
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
	
	
	printf("<< a[i]=a[i]+10 >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		a[i] = a[i] + 10;
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	printf("<< *b=*b+9 >> \n");
	printf("  -- before --\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	for(i=0;i<5;i++)
	{
		*b = *b + 9 ;
	}
	printf("  == RESULT =-\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	
	
	printf("<< *(c+i)=*(c+i)+9 >> \n");
	printf("  -- before --\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	for(i=0;i<5;i++)
	{
		*(c+i) = *(c+i) + 9 ;
	}
	printf("  == RESULT =-\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	
	
	printf("<< *a=*a+8 >> \n");
	printf("  -- before --\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		*a = *a + 8;
		a=a+1;
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	printf("<< *b=*b+8 >> \n");
	printf("  -- before --\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	for(i=0;i<5;i++)
	{
		*b = *b + 8 ;
		b=n+b;
	}
	printf("  == RESULT ==\n");
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	
	
	printf("<< *c=*c+8 >> \n");
	printf("  -- before --\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	for(i=0;i<5;i++)
	{
		*c = *c + 8;
		c=c+n;
	}
	printf("  == RESULT ==\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	
	
	printf("<< *d=*d+7 >> \n");
	printf("  -- before --\n");
	printf("d=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		*d = *d +7 ;
		d=d-1;
	}
	printf("  == RESULT ==\n");
	printf("d=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	
	
	printf("<< *e=*e+7 >> \n");
	printf("  -- before --\n");
	printf("e=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	for(i=0;i<5;i++)
	{
		*e = *e +7 ;
		e=e-n;
	}
	printf("  == RESULT ==\n");
	printf("e=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
}
int sub2 (int *a, int *b, int *c, int *d, int *e, int *f, int n)
{
	int  i;
	int  *s_a,*s_b,*s_c,*s_d,*s_e,*s_f;
	s_a=a;
	s_b=b;
	s_c=c;
	s_d=d;
	s_e=e;
	s_f=f;
	
	printf("<< *a=MAX(*b,*c) >> \n");
	printf("  -- before --\n");
	printf("c=  %d %d %d %d %d \n",s_c[0],s_c[1],s_c[2],s_c[3],s_c[4]);
	printf("b=  %d %d %d %d %d \n",s_b[0],s_b[1],s_b[2],s_b[3],s_b[4]);
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
	for(i=0;i<5;i++)
	{
		*a = t_max(*b,*c);
		a=a+1;
		b=b+n;
		c=n+c;
	}
	printf("  == RESULT ==\n");
	printf("a=  %d %d %d %d %d \n",s_a[0],s_a[1],s_a[2],s_a[3],s_a[4]);
}
int t_max (int a, int b)
{
	if(a>b) return(a) ;
	else return(b) ;
}

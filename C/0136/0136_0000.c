#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(int *p,int *p1,int *p2,int *p3 );


int main()
{
	int i,a[1000],count=0,n,m,j;
	init(a,&n,&m,&j);
	
	for(i=0;i<=100;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=100;i>=(-1);i--)
	{
		count++ ;
		if(i > -1)
		a[i]=a[i]+1;
	}
	for(i=0;i<=100+100;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=0;i<(100+100*10-120)%900;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=0;i<((-100)*(-1)+100/(-5)*3)-10;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	
	for(i=0;100>=i;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=100;-1<=i;i--)
	{
		count++ ;
		if(i>-1)
		a[i]=a[i]+1;
	}
	for(i=0;100+100>=i;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=0;(100+100*10-120)%900>i;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=0;((-100)*(-1)+100/(-5)*3)-10>i;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}

	
	for(i=0;i<=n;i++)
	{
		count-- ;
		a[i]=a[i]+1;
	}
	for(i=100;i!=(-m);i--)
	{
		count-- ;
		a[i+m]=a[i+m]+1;
	}
	for(i=0;i>n*(-m);i--)
	{
		count-- ;
		if ( i>-1)
		a[i+n*m]=a[i+n*m]+1;
	}
	for(i=999;i!=-((-m)*n-j*m);i--)
	{
		count-- ;
		a[i]=a[i]+1;
	}
	
	for(i=0;n>=i;i++)
	{
		count-- ;
		a[i]=a[i]+1;
	}
	for(i=100;(-m)!=i;i--)
	{
		count-- ;
		a[i+m]=a[i+m]+1;
	}
	for(i=0;n*(-m)<i;i--)
	{
		count-- ;
		a[i+n*m]=a[i+n*m]+1;
	}
	for(i=999;-((-m)*n-j*m)!=i;i--)
	{
		count-- ;
		a[i]=a[i]+1;
	}

	
	for(i=10;i<m+10;i++)
	{
		count+=1;
		a[i]=a[i]-1;
	}
	for(i=300;i<=(-10)-(-m*j);i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=999;i!=(-3000*(-m)/10-900*(j*m*n)/(j*j));i--)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=100;i!=(-7000*(-m)/10-900*(j*m*n)/(m*m));i++)
		count--;
	
	for(i=10;m+10>i;i++)
	{
		count+=1;
		a[i]=a[i]-1;
	}
	for(i=300;(-10)-(-m*j)>=i;i++)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=999;(-3000*(-m)/10-900*(j*m*n)/(j*j))!=i;i--)
	{
		count++ ;
		a[i]=a[i]+1;
	}
	for(i=100;(-7000*(-m)/10-900*(j*m*n)/(m*m))!=i;i++)
		count--;


	
	printf("count=%d \n",count);
	for(i=0;i<1000;i+=10)
		printf("a[%d]=%d  " , i, a[i]);
	printf("\n");
	exit (0);
}
int init(int *p,int *p1,int *p2,int *p3 )
{
	int *end_addr, *prm_ptr;
	for(prm_ptr=p,end_addr=p+1000; prm_ptr<end_addr; prm_ptr++)
		*prm_ptr=0;
	*p1=10;
	*p2=20;
	*p3=30;
}


#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(int *p,int *p1,int *p2 );


int main()
{
	int i,n,a[1000],count=0,plus,minus;
	init(a,&plus,&minus);
	
	for(i=0;i<1000;i++)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i!=1000;i+=1)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=i+1)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i!=1000;i=1+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i!=1000;i+=(1))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=i+(1))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=(1)+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i;i+=(-1))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i;i=i+(-1))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i;i=(-1)+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i>=0;i+=((-1)))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i>0;i=i+((-1)))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;0<=i;i=-1+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}

	
	for(i=999;i>=0;i--)
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=500;i;i-=1)
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=990;501<i;i=i-1)
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=100;1<=i;i-=(1))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=i-(-1))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=501;999>=i;i-=(-1))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i!=1000;i=i-(-1))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i-=((-1)))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=100;i<200;i=i-((-1)))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}

	
	for(i=0;i<1000;i+=100)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i+=(-(-200)))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=i+1*10/2-4)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i!=1000;i=100%3*8-7+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;i>=0;i-=100)
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=500;i;i-=100%3*1/1)
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=990;501<=i;i=i-(10*50/8*4))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}
	for(i=100;1<=i;i-=(10%4+4-(-100/10)))
	{ 
		count-- ;  
		a[i]=a[i]+1; 
	}

	
	for(i=0;i<1000;i+=plus)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i+=(-(-plus)))
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=0;i<1000;i=i-minus)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}
	for(i=999;0<=i;i=-plus+i)
	{ 
		count++ ;  
		a[i]=a[i]+1; 
	}

	
	printf("count=%d \n",count);
	for(i=0;i<1000;i+=10) {
		printf("a[%d]=%d  " , i, a[i]);
		n=i%9;
                if(n==0 && i!=0) printf("\n");
        }
	exit (0);
}
int init(int *p,int *p1,int *p2 )
{
	int end_addr;
	for(end_addr=(int)p+1000*4; ((int)p)<end_addr; p++)
		*p=0;
	*p1=5;
	*p2=-10;
}


#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i+M-(M)]                       
#define M    k*t+(-1)                         
union tag                                     
        {
        long int x[100];
        long int y[100];
        };
int k=1;
int t=1;
int main()                                         
     {
     union tag val;
     long int a[100];
     long int b[100];
          int acount;
          int bcount;
          int i;
          int j;
          int n;
     for(i=0;i<100;i++)                       
        {
        A(i)=0;
        b[i]=0;
        }
     for(i=0;i<100;i++)                        
        {
        a[++i+M]=1;
        }
     for(j=0;j<100;j++)                        
        {
        b[j+++M]=1;
        }
     for(i=0;i<100-M;i++)
        {
        val.x[i]=a[i];                          
        }
     printf("[[[[[  check point #1 ]]]]]");
     printf(" \n");
     n=1;
     for(i=0;i<98;i++)
        {
        printf("y[%d]=%ld ",i,val.y[i]);        
        if(i==10*n)
          {
          printf(" \n");
          n++;
          }
        }
     printf(" \n");
     for(j=0;j<100;j++)
        {
        val.y[j]=b[j];                          
        }
     printf("[[[[[  check point #2 ]]]]]");
     printf(" \n");
     for(j=0,n=1;j<98;j++)
        {
        printf("x[%d]=%ld ",j,val.x[j]);        
        if(i==10*n)
          {
          printf(" \n");
          n++;
          }
        }
     printf(" \n");
     for(i=0,acount=0,bcount=0;i<100;i++)
        {
        if(val.y[i]==0)
          {
          acount+=1;
          }
        if(val.x[i]==0)
          {
          bcount+=1;
          }
        }
        if(acount==bcount)
          {
          printf("[[[[[  NORMAL END !!!]]]]]");
          }
        else
          {
          printf("  is ABNORMAL END !!!");
          }
     printf(" \n");
	exit(0);
     }


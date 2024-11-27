#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i*1-(2*(3*(4*(5-6)-7)-8)-9)*0]
union tag
        {
        long int ua[100];
        long int ub[100];
        };
int main()
     {
     long int sub(long int a);
     union tag xx;
     long int a[100];
     long int b[100];
     long int c[100];
     long int dummy;
     long int count;
          int i;
          int j;
     for(i=0;i<100;i++)
        {
        xx.ub[i]=0;
        }
     for(count=0,dummy=0;dummy<10;dummy++)
        {
        for(i=99;i>=0;i--)
           {
           A(i)=i;
           }
        if(dummy==1000)
           {
           for(j=0;j<100;j++)
              {
              printf("---- a[%ld] = %ld ---- \n",j,a[j]);
              }
           }
        for(i=0;i<100;i++)
           {
           xx.ua[i]=sub(a[i]);
           }
        count++;
        }
     printf("dummy count is %ld \n", count);
     for(i=0;i<100;i++)
        {
        if(xx.ua[i]==xx.ub[i])
          {
          printf("union parties are same.cond=%ld\n",xx.ua[i]-xx.ub[i]);
          }
        else
          {
          printf("union parties are diff.cond=%ld\n",xx.ua[i]-xx.ub[i]);
          }
        }
	exit(0);
     }
     
long int sub(ax)                                     
     long int   ax;
     {
     long int   ans;
     if(ax==0)
       {
       ans=1;
       return(ans);
       }
     else
       {
       ans=sub(ax-1);                           
       return(ans);
       }
     }

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <math.h>
int output(float *p);


#define N 100
int main()
{
  int i,j,count=0;
  float a[N][N];
  for(i=N;i--;) for(j=0;++j<=N;) a[i][j-1]=(float)i;

  
   for(i=0;j=0,i<N;i++)
     {
       while(j<N)
       {
         a[i][j]=a[i][j]+(float)i*j;
         j++;
         count++;
       }
       j=i;
     }
  
   for(i=0;j=N-1,i<N;i++)
    {
      while( j!=i+i-i)
      {
        a[i][j]=a[j][i];
        j--;
        count++;
      }
    }
  
   for(i=0;j=0,i<N;i++)
    {
      j=j+i;
      while(j==i)
      {
       a[j][i]=a[i][j];
       count++;
       j++;
      }
    }
 
  for(i=0;j=0,i+10<N+10;i++)
   {
     while(j<N)
     {
       a[j][i]=a[j][i]/(float)(i+1);
       j++;
       count++;
     }
   }
 
   for(i=N,i--;j=N,i-10>=-10;i--)
   {
     while(--j>=0)
     {
       if(i>j){a[i][j]=a[j][i];}
          else{a[i][j]=a[i][j]+a[i][j];}
       --j;
       count++;
     }
   }
 
   for(i=0;j=-1,i<N;i++)
    {
      while(count++,j++<((int)&i+N-(int)&i)-1)
      {
       if(N<i){i++;}
       a[i][j]=a[i][j]-100.0;
     }
    }
 output(a);
 printf("\n count=%d i=%d j=%d\n",count,i,j);
exit (0);
}
int output(float *p)
{
  register int count=0;
  float *pend;
  pend = p+N*N;
  while((p=p+10)<pend)
    {
      printf("%10.4f ",*p);
      if(count++%6==0){printf("\n");}
    }
}

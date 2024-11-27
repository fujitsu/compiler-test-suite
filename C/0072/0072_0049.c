#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <math.h>
int output(float *p);



#define N 100
int main()
{
  struct st1 {
    float a[N][N];
  } t;
  struct st1 *p = &t;

  int i,j,count=0;
  for(i=N;i--;) for(j=0;++j<=N;) p->a[i][j-1]=(float)i;

  
   for(i=0;j=0,i<N;i++)
     {
       while(j<N)
       {
         p->a[i][j]=p->a[i][j]+(float)i*j;
         j++;
         count++;
       }
       j=i;
     }
  
   for(i=0;j=N-1,i<N;i++)
    {
      while( j!=i+i-i)
      {
        p->a[i][j]=p->a[j][i];
        j--;
        count++;
      }
    }
  
   for(i=0;j=0,i<N;i++)
    {
      j=j+i;
      while(j==i)
      {
       p->a[j][i]=p->a[i][j];
       count++;
       j++;
      }
    }
 
  for(i=0;j=0,i+10<N+10;i++)
   {
     while(j<N)
     {
       p->a[j][i]=p->a[j][i]/(float)(i+1);
       j++;
       count++;
     }
   }
 
   for(i=N,i--;j=N,i-10>=-10;i--)
   {
     while(--j>=0)
     {
       if(i>j){p->a[i][j]=p->a[j][i];}
          else{p->a[i][j]=p->a[i][j]+p->a[i][j];}
       --j;
       count++;
     }
   }
 
   for(i=0;j=-1,i<N;i++)
    {
      while(count++,j++<((long)&i+N-(long)&i)-1)
      {
       if(N<i){i++;}
       p->a[i][j]=p->a[i][j]-100.0;
     }
    }
 output(p->a);
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
      printf("%10.3f ",*p);
      if(count++%6==0){printf("\n");}
    }
}

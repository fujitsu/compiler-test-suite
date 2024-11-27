#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 100
void output();
int main()
{
  struct st1 {
    float a[N][N];
  } t;
  struct st1 *p = &t;
  int i=N,j,count=0;
  while(j=N,i--)while(j--) p->a[i][j]=(float)i;

  
   j=N-j-1;
   while(i=0,++j<N)
    {
     for(;i<N;i++)
      {
         p->a[i][j]=p->a[i][j]+(float)i*j;
         count++;
       }
     }
  

   j=0;
   while(j<count/N-j*N)
    {
      for(i=0;i<N;i++)
       {
        p->a[i][j]=p->a[j][i];
        count++;
       }
      j++;
    }

  
   j=j-j; 
   while(j<(long)&i+N-(long)&i)
   {
    for(i=j;i<N;i+=2)
    {
       p->a[j][i]=p->a[i][j];
       count++;
    }
    j++;
   }
  
  j=i;
  while((j-=2)>=0)
  {
   for(i=0;i+10<N+10;i++)
   {
       p->a[j][i]=p->a[j][i]/(float)(i+1);
       count++;
   }
  }
 
  j=N;
  while(--j>=0)
   {
    for(i=N,i--;i-10>=-10;i--)
     {
       if(i>j){p->a[i][j]=p->a[j][i];}
          else{p->a[i][j]=p->a[i][j]+p->a[i][j];}
       count++;
     }
    --j;
   }

 
   j=0;
   while(j<(long)&i+N-(long)&i)
   {
    for(i=0;i<N;i++)
    {
       if(N<i){i++;}
       p->a[i][j]=p->a[i][j]-100.0;
     }
     j++;
    }

 output(p->a);
 printf("\n count=%d i=%d j=%d\n",count,i,j);
exit (0);
}

void output(float *p)
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
          


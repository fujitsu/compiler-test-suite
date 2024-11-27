#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 100
void output();
int main()
{
  int i=N,j,count=0;
  float a[N][N];
  while(j=N,i--)while(j--) a[i][j]=(float)i;

  
   j=N-j-1;
   while(i=0,++j<N)
    {
     for(;i<N;i++)
      {
         a[i][j]=a[i][j]+(float)i*j;
         count++;
       }
     }
  

   j=0;
   while(j<count/N-j*N)
    {
      for(i=0;i<N;i++)
       {
        a[i][j]=a[j][i];
        count++;
       }
      j++;
    }

  
   j=j-j; 
   while(j<(int)&i+N-(int)&i)
   {
    for(i=j;i<N;i+=2)
    {
       a[j][i]=a[i][j];
       count++;
    }
    j++;
   }
  
  j=i;
  while((j-=2)>=0)
  {
   for(i=0;i+10<N+10;i++)
   {
       a[j][i]=a[j][i]/(float)(i+1);
       count++;
   }
  }
 
  j=N;
  while(--j>=0)
   {
    for(i=N,i--;i-10>=-10;i--)
     {
       if(i>j){a[i][j]=a[j][i];}
          else{a[i][j]=a[i][j]+a[i][j];}
       count++;
     }
    --j;
   }

 
   j=0;
   while(j<(int)&i+N-(int)&i)
   {
    for(i=0;i<N;i++)
    {
       if(N<i){i++;}
       a[i][j]=a[i][j]-100.0;
     }
     j++;
    }

 output(a);
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
          



#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define N 0
#define M 10
int main()
{
  struct st1 {
    int     b[10],d[10],e[10],h[10];
    float   c[10];
    double  a[10],g[10],f[10];
  } t;
  
  struct st1 *p = &t;

  int i,j,k,l;

  for (i=0,j=3;i<10;i++,j++){
    if(i >= 7) p->b[i]=0;
    else       p->b[i]=i+1;

   if(i==1 || i==2 || i==5 || i==9){
      p->d[i]=0;
      p->e[i]=0;
    }else if(i==8){
      p->d[i]=1;
      p->e[i]=3;
    }else{
      p->d[i]=1;
      p->e[i]=1;
    }
    p->a[i]=i+1;
    if(i==7) j=0;
    p->g[i]=j;
    p->c[i]=0;
    p->f[i]=0;
    if(i==9) p->h[i]=0;
    else     p->h[i]=i+1;
 }

  for(i=N,j=1,l=1 ; p->b[i] ; i++,j*=2)
    if (p->d[i])
      if (!(sqrt(p->a[i])-p->e[i]))
        p->c[i]=p->f[i]=cos(p->g[i]);
  printf("%d %d \n",j,l);
  for(i=0;i<M;i++) printf("%f %f %d \n",p->c[i],p->f[i],p->h[i]);
exit (0);
}


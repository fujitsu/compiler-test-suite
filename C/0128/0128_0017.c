#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <math.h>
#define N 0
#define M 10
int main()
{
  int i,b[10]={1,2,3,4,5,6,7,0,0,0},j,k,l;
  int d[10]={1,0,0,1,1,0,1,1,1,0};
  int e[10]={1,0,0,1,1,0,1,1,3,0};
  static double a[10]={1,2,3,4,5,6,7,8,9,10};
  static double g[10]={3,4,5,6,7,8,9,0,1,2};
  float         c[10]={0,0,0,0,0,0,0,0,0,0};
  static double f[10]={0,0,0,0,0,0,0,0,0,0};
  int h[10]={1,2,3,4,5,6,7,8,9,0};
  for(i=N,j=1,l=1 ; b[i] ; i++,j*=2)
    if (d[i])
      if (!(sqrt(a[i])-e[i]))
        c[i]=f[i]=cos(g[i]);
 
  printf("%d %d \n",j,l);
  for(i=0;i<M;i++) printf("%f %f %d \n",c[i],f[i],h[i]);

exit (0);
}

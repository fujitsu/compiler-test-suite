#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <math.h>
int main()
{
  int i,j=1,*p;
  int a[10]={1,2,3,4,5,6,7,8,9,0};
  int b[10]={1,1,1,1,1,1,1,1,1,1};
  int c[10]={0,0,0,0,0,0,0,0,0,0};
  int d[10]={1,1,2,6,1,2,1,1,3,0};
  int e[10]={0,0,0,0,0,0,0,0,0,0};
  int f[10]={1,1,1,1,1,1,1,1,1,1};
  p = &d[0] ;
  for(i=0;i<10;i++)
    switch (a[i])
    {
      case 1 : f[i] = i;
               if (!c[i]) f[i] *= sin((double)i) ;
               break;
      case 2 : f[i] = -i;
               if (!c[i]) f[i] = cos((double)j) ;
               else f[i] = j * j   ;
               break;
      case 3 : f[i] = -sqrt(i);
               break;
      default: f[i] *= 1 ;
    }
  for(i=0;i<10;i++)
    switch (*(p+i))
    {
      case 1 : b[i] = i;
               if (!c[i]) b[i] *= i ;
               break;
      case 2 : for(j=0;j<10;j++) b[i]+=c[j];
               break;
      default: b[i] *= 1 ;
    }
  for(i=0;i<10;i++)
  {
    if (i<5)
    switch (a[i])
    {
      case 1 : c[i] = 1 * *(p+i) ;
               break;
      case 2 : c[i] = 2 * b[*(p+i)] ;
               break;
      case 3 : c[i] = 3 * b[*(p+i)] + i ;
      default: break;
    }
  }
  for(i=0;i<10;i++)
    switch (a[i])
    {
      case 1 : if (b[i]==1)
                 *(p+i) = 1 ;
      default: break;
    }
  for(i=0;i<10;i++) printf("%d ",f[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",b[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",c[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",d[i]);
  printf("\n");
exit (0);
}

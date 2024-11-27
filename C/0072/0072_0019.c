
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  struct st1 {
    int x[10];
  } a,b,c,d,e,f;

  int i,j=1,*p;
  int wk_d[10]={1,1,2,6,1,2,1,1,3,0};
  
  for(i=0;i<10;i++){
    if(i==9) a.x[i]=0;
    else     a.x[i]=i+1;
    b.x[i]=1;
    c.x[i]=0;
    d.x[i]=wk_d[i];
    e.x[i]=0;
    f.x[i]=1;
  }

  p = &d.x[0] ;
  for(i=0;i<10;i++)
    switch (a.x[i])
    {
      case 1 : f.x[i] = i;
               if (!c.x[i]) f.x[i] *= sin((double)i) ;
               break;
      case 2 : f.x[i] = -i;
               if (!c.x[i]) f.x[i] = cos((double)j) ;
               else f.x[i] = j * j   ;
               break;
      case 3 : f.x[i] = -sqrt(i);
               break;
      default: f.x[i] *= 1 ;
    }
  for(i=0;i<10;i++)
    switch (*(p+i))
    {
      case 1 : b.x[i] = i;
               if (!c.x[i]) b.x[i] *= i ;
               break;
      case 2 : for(j=0;j<10;j++) b.x[i]+=c.x[j];
               break;
      default: b.x[i] *= 1 ;
    }
  for(i=0;i<10;i++)
  {
    if (i<5)
    switch (a.x[i])
    {
      case 1 : c.x[i] = 1 * *(p+i) ;
               break;
      case 2 : c.x[i] = 2 * b.x[*(p+i)] ;
               break;
      case 3 : c.x[i] = 3 * b.x[*(p+i)] + i ;
      default: break;
    }
  }
  for(i=0;i<10;i++)
    switch (a.x[i])
    {
      case 1 : if (b.x[i]==1)
                 *(p+i) = 1 ;
      default: break;
    }
  for(i=0;i<10;i++) printf("%d ",f.x[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",b.x[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",c.x[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",d.x[i]);
  printf("\n");
exit (0);
}

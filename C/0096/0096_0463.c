#include  <stdio.h>

int main(void) {
    int x,y ;
    {
      int a,b;
      a=b=1 ;
      x=a+1 ;
      y=b+1 ;
      goto l1 ;
      }
    {
      goto l2 ;
      }
l1:
    {
      int a,b ;
      a=b=2 ;
      x=x-a ;
      y=y-b ;
      goto l2;
      }
    {
      goto l3 ;
      }
l2:
    {
      if (x==0&&y==0)
        printf ("***  ok ***\n") ;
      else
        printf ("***  ng x=%d y=%d ***\n",x,y) ;
      return 0;
      }
l3:
    {
      printf ("***  ng invalid branch ***\n") ;
      }
    }

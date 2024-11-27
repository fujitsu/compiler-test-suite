#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main() {
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
        printf ("*** mptest49 ok ***\n") ;
      else
        printf ("*** mptest49 ng x=%d y=%d ***\n",x,y) ;
      exit(0);
      }
l3:
    {
      printf ("*** mptest49 ng invalid branch ***\n") ;
      }
exit (0);
    }

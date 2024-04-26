#include  <stdio.h>
 int func1(int q);

int 
main (void)
{
           int   a,b,c,x,y;

  printf("********** TEST START **********\n");
                a=1;
                b=2;

  x=func1(a);
  y=func1(b);
          c=x+y;
  if ( c == 12)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");

  printf("********** TEST  END **********\n");

}
  int 
func1 (int q)
{
          int   x;
          x=q*4;
  return (x);

}
  int 
func2 (int r)
{
          int   y;
          y=r*4;
  return (y);

}


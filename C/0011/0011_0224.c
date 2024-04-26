#include  <stdio.h>
int func1(int x, int y);

int main()
{
  static int               sa,sb,sd;
  static double                  sc;

  printf("********** TEST START **********\n");

       sa=4;
       sb=-3;
       sc=6;

  if (sa == 4 && sb == -3 && sc == 6)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");

  sd=func1(sa,sb);

  if (sd == 1)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");

  printf("********** TEST  END **********\n");
}
int func1(int x, int y)
{
       int     z;

       z=x+y;
       return(z);
}

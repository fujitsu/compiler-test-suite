#include  <stdio.h>

static int a = 1 ;
int        d = 4 ;
int main()
{
  static int b = 2 ;
  int        c = 3 ;


  printf("********** TEST START **********\n");

  if (a == 1 && b == 2 && c == 3 && d == 4)
      printf("***** O   K *****\n");
  else
      printf("***** N   G *****\n");

  printf("********** TEST  END **********\n");

}

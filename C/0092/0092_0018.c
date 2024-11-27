#include <stdio.h>


int main(void)
{
  char ans1;
  char a = 2;
  char b = 3;
  static int c=1;
  int  ans2;

  printf ("###  START ###\n");
  ans1 = a != b;
  ans2 = c == 1;

  if (ans1 != 0)
    printf ("###      OK-1      ###\n");
  else
    printf ("###      NG-1      ###\n");

  if (ans2 == 1)
    printf ("###      OK-2      ###\n");
  else
    printf ("###      NG-2      ###\n");
  printf ("###   END  ###\n");

  return 0;
}

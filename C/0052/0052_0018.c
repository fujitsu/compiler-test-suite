#include <stdio.h>



int main()
{
#ifdef __STDC__
  static const int ca = 3,cb;
  static volatile int va,vb = 4;
#else
  static int ca = 3,cb;
  static int va,vb = 4;
#endif
  int a,b,c;

  printf("********** 19 TEST START **********\n");

  a=ca;
  b=vb;

  if (a == 3)
      printf("***** 19 - 01 ***** O   K *****\n");
    else
      printf("***** 19 - 01 ***** N   G *****\n");
  if (b == 4)
      printf("***** 19 - 02 ***** O   K *****\n");
    else
      printf("***** 19 - 02 ***** N   G *****\n");

  printf("********** 19 TEST  END  **********\n");
}

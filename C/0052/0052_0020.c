#include <stdio.h>



int main()
{
  int a,b,c;

  printf("********** 21 TEST START **********\n");

  a = b = c = 0;

  while(a==b)
  {
      if (a) break;
      a=a+1;
  }

  if (a == 1)
      printf("***** 21 - 01 ***** O   K *****\n");
    else
      printf("***** 21 - 01 ***** N   G *****\n");

  while(a==b)
  {
      if (a) continue;
      a=a+1;
  }

  if (a == 1)
      printf("***** 21 - 02 ***** O   K *****\n");
    else
      printf("***** 21 - 02 ***** N   G *****\n");

  if (a==c) goto lab;
  c=a+b;
lab:;
  c=c+a;

  if (c == 2)
      printf("***** 21 - 03 ***** O   K *****\n");
    else
      printf("***** 21 - 03 ***** N   G *****\n");

  printf("********** 21 TEST  END  **********\n");
}

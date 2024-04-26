#include <string.h>
#include <stdio.h>

int main()
{
  static char sa[5]="line";
  static unsigned short int      sb;
  static float                   sc;
  static long long int           sd;
  static long double             se;
  static struct name
    {char * first;
      char * second;
    } str1={
       "test01",
       "test02",
       };
  static union ux
    {int el1;
      char el2;
    } str2;

  printf("********** TEST START **********\n");

       sb=4;
       sc=-3;
       sd=6;
       se=7;
       str2.el1=5;

  if (sb == 4 && sc == -3 && sd == 6 && se == 7 && str2.el1 == 5)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");
  if (strcmp(sa,"line") == 0)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");
  if (strcmp(str1.first,"test01") == 0)
      printf("***** 03 ***** O   K *****\n");
  else
      printf("***** 03 ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");
}

#include <string.h>
#include  <stdio.h>

  float                           a;
  static char                    sa;
  static unsigned short int      sb;
  static float                   sc;
  static double                  sd;
  static long long int           se;
  static long double             sf;
  static char            *s = "abc";
  static struct name
    {char * first;
      char * second;
    } str1={
       "str1a",
       "str1b",
       };
  static union ux
    { int el1;
      char el2;
    } str2;
int main()
{

  printf("********** TEST STAR **********\n");

        a=4;
       sa=2;
       sb=5;
      sc=-3;
       sd=6;
       se=8;
       str2.el1=9;

  if (a == 4 && str2.el1 == 9)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");
  if (sa == 2 && sb == 5 && sc == -3 && sd == 6 && se == 8)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");
  if (strcmp(str1.first,"str1a") == 0)
      printf("***** 03 ***** O   K *****\n");
  else
      printf("***** 03 ***** N   G *****\n");
  if(strlen(s) == 3)
      printf("***** 04 ***** O   K *****\n");
  else
      printf("***** 04 ***** N   G *****\n");

  printf("********** TEST  END **********\n");
}

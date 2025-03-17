#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x +
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)
#define m4(x) m3(x) + m3(x)
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    {
      static char a[16] = "\a\b\f\n\r\t\v\x6c\114\d";
 
      if (a[0] == 0x07)
          printf("***** CATEGORY - 01 ***** O K *****\n");
        else
          printf("***** CATEGORY - 01 ***** N G *****\n");
 
      if (a[1] == 0x08)
          printf("***** CATEGORY - 02 ***** O K *****\n");
        else
          printf("***** CATEGORY - 02 ***** N G *****\n");
 
      if (a[2] == 0x0c)
          printf("***** CATEGORY - 03 ***** O K *****\n");
        else
          printf("***** CATEGORY - 03 ***** N G *****\n");
 
      if (a[3] == 0x0a)
          printf("***** CATEGORY - 04 ***** O K *****\n");
        else
          printf("***** CATEGORY - 04 ***** N G *****\n");
 
      if (a[4] == 0x0d)
          printf("***** CATEGORY - 05 ***** O K *****\n");
        else
          printf("***** CATEGORY - 05 ***** N G *****\n");
 
      if (a[5] == 0x09)
          printf("***** CATEGORY - 06 ***** O K *****\n");
        else
          printf("***** CATEGORY - 06 ***** N G *****\n");
 
      if (a[6] == 0x0b)
          printf("***** CATEGORY - 07 ***** O K *****\n");
        else
          printf("***** CATEGORY - 07 ***** N G *****\n");
 
      if (a[7] == 'l')
          printf("***** CATEGORY - 08 ***** O K *****\n");
        else
          printf("***** CATEGORY - 08 ***** N G *****\n");
 
      if (a[8] == 'L')
          printf("***** CATEGORY - 09 ***** O K *****\n");
        else
          printf("***** CATEGORY - 09 ***** N G *****\n");
 
      if (a[9] == 'd')
          printf("***** CATEGORY - 10 ***** O K *****\n");
        else
          printf("***** CATEGORY - 10 ***** N G *****\n");
    }
    {
      static char a[5]="a";
 
      if (a[0] == 0x61)
          printf("***** CATEGORY - 11 ***** O K *****\n");
        else
          printf("***** CATEGORY - 11 ***** N G *****\n");
    }
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

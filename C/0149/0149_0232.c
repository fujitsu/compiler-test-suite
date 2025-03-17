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
      int a = 'a';
 
      if (a == 'a')
          printf("***** CATEGORY - 01 ***** O K *****\n");
        else
          printf("***** CATEGORY - 01 ***** N G *****\n");
    }
    {
      int a='b';
 
      if (a == 'b')
          printf("***** CATEGORY - 02 ***** O K *****\n");
        else
          printf("***** CATEGORY - 02 ***** N G *****\n");
    }
    {
      int z = 0 + 0 + m4(0); int a = 'c';
 
      if (a == 'c')
          printf("***** CATEGORY - 03 ***** O K *****\n");
        else
          printf("***** CATEGORY - 03 ***** N G *****\n");
    }
    {
      int z = 0 + 0 + 0 +m4(0);int a='d';
 
      if (a == 'd')
          printf("***** CATEGORY - 04 ***** O K *****\n");
        else
          printf("***** CATEGORY - 04 ***** N G *****\n");
    }
  }
  {
    {
      int a = 'efg';
 
      if (a == 'efg')
          printf("***** CATEGORY - 05 ***** O K *****\n");
        else
          printf("***** CATEGORY - 05 ***** N G *****\n");
    }
    {
      int a='hij';
 
      if (a == 'hij')
          printf("***** CATEGORY - 06 ***** O K *****\n");
        else
          printf("***** CATEGORY - 06 ***** N G *****\n");
    }
    {
      int z = 0 + 0 + m4(0); int a = 'klm';
 
      if (a == 'klm')
          printf("***** CATEGORY - 07 ***** O K *****\n");
        else
          printf("***** CATEGORY - 07 ***** N G *****\n");
    }
    {
      int z = 0 + 0 + 0+m4(0); int a='nop';
 
      if (a == 'nop')
          printf("***** CATEGORY - 08 ***** O K *****\n");
        else
          printf("***** CATEGORY - 08 ***** N G *****\n");
    }
  }
  {
    {
      unsigned int a = 'qrst';
 
      if (a == 'qrst')
          printf("***** CATEGORY - 09 ***** O K *****\n");
        else
          printf("***** CATEGORY - 09 ***** N G *****\n");
    }
    {
      unsigned int a='uvwx';
 
      if (a == 'uvwx')
          printf("***** CATEGORY - 10 ***** O K *****\n");
        else
          printf("***** CATEGORY - 10 ***** N G *****\n");
    }
    {
      int z = m4(0);unsigned int a = 'yz01';
 
      if (a == 'yz01')
          printf("***** CATEGORY - 11 ***** O K *****\n");
        else
          printf("***** CATEGORY - 11 ***** N G *****\n");
    }
    {
      int z = m4(0); unsigned int a='2345';
 
      if (a == '2345')
          printf("***** CATEGORY - 12 ***** O K *****\n");
        else
          printf("***** CATEGORY - 12 ***** N G *****\n");
    }
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

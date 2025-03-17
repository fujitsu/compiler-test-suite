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
    long long int a;
 
    a = 0x100000000;
    if (a == 4294967296u)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    a=0x100000000;
    if (a == 4294967296u)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x100000000;
    if (a == 4294967296u)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x100000000;
    if (a == 4294967296u)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    long long int a;
 
    a = 0x100000000;
    if (a == 4294967296ul)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    a=0x100000000;
    if (a == 4294967296ul)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0xffffU;
    if (a == 65535u)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0xffffu;
    if (a == 65535u)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 0x10000U;
    if (a == 65536ul)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    a=0x10000u;
    if (a == 65536ul)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 0x10000u;
    if (a == 65536ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=0x10000u;
    if (a == 65536ul)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int a;
 
    a = 0x7ffe;
    if (a == 32766)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    a=0x7ffe;
    if (a == 32766)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x7ffe;
    if (a == 32766)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x7ffe;
    if (a == 32766)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    int a;
 
    a = 0x7fff;
    if (a == 32767)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
    a=0x7fff;
    if (a == 32767)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0x7fff;
    if (a == 32767)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0x7fff;
    if (a == 32767)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 0x8000;
    if (a == 32768l)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
    a=0x8000;
    if (a == 32768l)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 0x8000;
    if (a == 32768l)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=0x8000;
    if (a == 32768l)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 0177776U;
    if (a == 65534u)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
    a=0177776l;
    if (a == 65534u)
        printf("***** CATEGORY - 26 ***** O K *****\n");
      else
        printf("***** CATEGORY - 26 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 0177776u;
    if (a == 65534u)
        printf("***** CATEGORY - 27 ***** O K *****\n");
      else
        printf("***** CATEGORY - 27 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=0177776u;
    if (a == 65534u)
        printf("***** CATEGORY - 28 ***** O K *****\n");
      else
        printf("***** CATEGORY - 28 ***** N G *****\n");
  }
  {
    unsigned long int a;
 
    a = 0177777u;
    if (a == 65535u)
        printf("***** CATEGORY - 29 ***** O K *****\n");
      else
        printf("***** CATEGORY - 29 ***** N G *****\n");
    a=0177777u;
    if (a == 65535u)
        printf("***** CATEGORY - 30 ***** O K *****\n");
      else
        printf("***** CATEGORY - 30 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0177777U;
    if (a == 65535u)
        printf("***** CATEGORY - 31 ***** O K *****\n");
      else
        printf("***** CATEGORY - 31 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0177777U;
    if (a == 65535u)
        printf("***** CATEGORY - 32 ***** O K *****\n");
      else
        printf("***** CATEGORY - 32 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 0200000u;
    if (a == 65536lu)
        printf("***** CATEGORY - 33 ***** O K *****\n");
      else
        printf("***** CATEGORY - 33 ***** N G *****\n");
    a=0200000U;
    if (a == 65536lu)
        printf("***** CATEGORY - 34 ***** O K *****\n");
      else
        printf("***** CATEGORY - 34 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0200000U;
    if (a == 65536lu)
        printf("***** CATEGORY - 35 ***** O K *****\n");
      else
        printf("***** CATEGORY - 35 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0200000u;
    if (a == 65536lu)
        printf("***** CATEGORY - 36 ***** O K *****\n");
      else
        printf("***** CATEGORY - 36 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

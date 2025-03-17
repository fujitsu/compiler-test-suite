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
    unsigned int a;
 
    a = 0u;
    if (a == 0u)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
    a=0u;
    if (a == 0u)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a = 0U;
    if (a == 0u)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0U;
    if (a == 0u)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 037777777776u;
    if (a == 4294967294u)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
    a=037777777776U;
    if (a == 4294967294u)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 037777777776U;
    if (a == 4294967294u)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=037777777776u;
    if (a == 4294967294u)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 037777777777U;
    if (a == 4294967295u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
    a=037777777777u;
    if (a == 4294967295u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 037777777777u;
    if (a == 4294967295u)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=037777777777u;
    if (a == 4294967295u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    long int a;
 
    a = 0l;
    if (a == 0l)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
    a=0l;
    if (a == 0l)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a = 0L;
    if (a == 0l)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0L;
    if (a == 0l)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    long int a;
 
    a = 017777777776l;
    if (a == 2147483646l)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
    a=017777777776L;
    if (a == 2147483646l)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 017777777776L;
    if (a == 2147483646l)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=017777777776l;
    if (a == 2147483646l)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    long int a;
 
    a = 017777777777L;
    if (a == 2147483647l)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
    a=017777777777l;
    if (a == 2147483647l)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 017777777777l;
    if (a == 2147483647l)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=017777777777l;
    if (a == 2147483647l)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    unsigned long int a;
 
    a = 020000000000L;
    if (a == 2147483648ul)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
    a=020000000000l;
    if (a == 2147483648ul)
        printf("***** CATEGORY - 26 ***** O K *****\n");
      else
        printf("***** CATEGORY - 26 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 020000000000l;
    if (a == 2147483648ul)
        printf("***** CATEGORY - 27 ***** O K *****\n");
      else
        printf("***** CATEGORY - 27 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=020000000000l;
    if (a == 2147483648ul)
        printf("***** CATEGORY - 28 ***** O K *****\n");
      else
        printf("***** CATEGORY - 28 ***** N G *****\n");
  }
  {
    unsigned long int a;
 
    a = 0lu;
    if (a == 0ul)
        printf("***** CATEGORY - 29 ***** O K *****\n");
      else
        printf("***** CATEGORY - 29 ***** N G *****\n");
    a=0lu;
    if (a == 0ul)
        printf("***** CATEGORY - 30 ***** O K *****\n");
      else
        printf("***** CATEGORY - 30 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a = 0LU;
    if (a == 0ul)
        printf("***** CATEGORY - 31 ***** O K *****\n");
      else
        printf("***** CATEGORY - 31 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0LU;
    if (a == 0ul)
        printf("***** CATEGORY - 32 ***** O K *****\n");
      else
        printf("***** CATEGORY - 32 ***** N G *****\n");
  }
  {
    unsigned long int a;
 
    a = 037777777776ul;
    if (a == 4294967294lu)
        printf("***** CATEGORY - 33 ***** O K *****\n");
      else
        printf("***** CATEGORY - 33 ***** N G *****\n");
    a=037777777776Ul;
    if (a == 4294967294lu)
        printf("***** CATEGORY - 34 ***** O K *****\n");
      else
        printf("***** CATEGORY - 34 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 037777777776LU;
    if (a == 4294967294lu)
        printf("***** CATEGORY - 35 ***** O K *****\n");
      else
        printf("***** CATEGORY - 35 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=037777777776ul;
    if (a == 4294967294lu)
        printf("***** CATEGORY - 36 ***** O K *****\n");
      else
        printf("***** CATEGORY - 36 ***** N G *****\n");
  }
  {
    unsigned long int a;
 
    a = 037777777777lU;
    if (a == 4294967295ul)
        printf("***** CATEGORY - 37 ***** O K *****\n");
      else
        printf("***** CATEGORY - 37 ***** N G *****\n");
    a=037777777777lu;
    if (a == 4294967295ul)
        printf("***** CATEGORY - 38 ***** O K *****\n");
      else
        printf("***** CATEGORY - 38 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 037777777777ul;
    if (a == 4294967295lu)
        printf("***** CATEGORY - 39 ***** O K *****\n");
      else
        printf("***** CATEGORY - 39 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=037777777777lu;
    if (a == 4294967295ul)
        printf("***** CATEGORY - 40 ***** O K *****\n");
      else
        printf("***** CATEGORY - 40 ***** N G *****\n");
  }
  {
    int a;
 
    a = 0;
    if (a == 0)
        printf("***** CATEGORY - 41 ***** O K *****\n");
      else
        printf("***** CATEGORY - 41 ***** N G *****\n");
    a=0;
    if (a == 0)
        printf("***** CATEGORY - 42 ***** O K *****\n");
      else
        printf("***** CATEGORY - 42 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +0+m4(0); a = 0;
    if (a == 0)
        printf("***** CATEGORY - 43 ***** O K *****\n");
      else
        printf("***** CATEGORY - 43 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0;
    if (a == 0)
        printf("***** CATEGORY - 44 ***** O K *****\n");
      else
        printf("***** CATEGORY - 44 ***** N G *****\n");
  }
  {
    int a;
 
    a = 017777777776;
    if (a == 2147483646)
        printf("***** CATEGORY - 45 ***** O K *****\n");
      else
        printf("***** CATEGORY - 45 ***** N G *****\n");
    a=017777777776;
    if (a == 2147483646)
        printf("***** CATEGORY - 46 ***** O K *****\n");
      else
        printf("***** CATEGORY - 46 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 017777777776;
    if (a == 2147483646)
        printf("***** CATEGORY - 47 ***** O K *****\n");
      else
        printf("***** CATEGORY - 47 ***** N G *****\n");
    a = 0 + 0 + 0 + 0 + m4(0); a=017777777776;
    if (a == 2147483646)
        printf("***** CATEGORY - 48 ***** O K *****\n");
      else
        printf("***** CATEGORY - 48 ***** N G *****\n");
  }
  {
    int a;
 
    a = 017777777777;
    if (a == 2147483647)
        printf("***** CATEGORY - 49 ***** O K *****\n");
      else
        printf("***** CATEGORY - 49 ***** N G *****\n");
    a=017777777777;
    if (a == 2147483647)
        printf("***** CATEGORY - 50 ***** O K *****\n");
      else
        printf("***** CATEGORY - 50 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 017777777777;
    if (a == 2147483647)
        printf("***** CATEGORY - 51 ***** O K *****\n");
      else
        printf("***** CATEGORY - 51 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=017777777777;
    if (a == 2147483647)
        printf("***** CATEGORY - 52 ***** O K *****\n");
      else
        printf("***** CATEGORY - 52 ***** N G *****\n");
  }
  {
    unsigned int a;
 
    a = 020000000000;
    if (a == 2147483648u)
        printf("***** CATEGORY - 53 ***** O K *****\n");
      else
        printf("***** CATEGORY - 53 ***** N G *****\n");
    a=020000000000;
    if (a == 2147483648u)
        printf("***** CATEGORY - 54 ***** O K *****\n");
      else
        printf("***** CATEGORY - 54 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a = 020000000000;
    if (a == 2147483648u)
        printf("***** CATEGORY - 55 ***** O K *****\n");
      else
        printf("***** CATEGORY - 55 ***** N G *****\n");
    a = 0 + 0 + 0 + m4(0); a=020000000000;
    if (a == 2147483648u)
        printf("***** CATEGORY - 56 ***** O K *****\n");
      else
        printf("***** CATEGORY - 56 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

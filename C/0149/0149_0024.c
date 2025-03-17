#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x +
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)
#define m4(x) m3(x) + m3(x)
#define m5(x) m3(x) + m2(x) + m2(x) + m2(x) + m2(x)
#define m6(x) m5(x) + ml(x) m1(x) mr(x) + m1(x)
#define m7(x) ( ( ( ( ( ( ( m6(x) ) ) ) ) ) ) )
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    unsigned long int a = 2147483648LU;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=2147483648Lu;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    unsigned long int a = 4294967295Lu;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=4294967295Lu;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    long int a = 2147483647L;
 
    if (a == 2147483647l)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    int z=m4(0);long int a = 1234567L;
 
    if (a == 1234567l)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    unsigned long int a = 2147483648lU;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=2147483648lU;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned long int a = 4294967295lu;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=4294967295lu;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    long int a = 2147483647l;
 
    if (a == 2147483647l)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    int z=m4(0);long int a = 1234567l;
 
    if (a == 1234567l)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    unsigned long int a = 2147483648UL;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=2147483648UL;
 
    if (a == 2147483648lu)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    unsigned long int a = 4294967295Ul;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    int z = m7(0);unsigned long int a=4294967295Ul;
 
    if (a == 4294967295lu)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    unsigned int a = 2147483648U;
 
    if (a == 2147483648u)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int z=m4(0);unsigned int a = 123U;
 
    if (a == 123u)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
    unsigned long int a = 2147483648uL;
 
    if (a == 2147483648ul)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
  }
  {
    int z=m4(0);int a = 2147483648uL;
 
#if (A32 || I64 || LLP || ILP)
    if (a == 2147483648ul)
#else A64
    if (a == 18446744071562067968ul)
#endif
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    unsigned long int a = 4294967295ul;
 
    if (a == 4294967295ul)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
  }
  {
    int z=m7(0);unsigned long int a = 4294967295ul;
 
    if (a == 4294967295ul)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
  }
  {
    unsigned int a = 2147483648u;
 
    if (a == 2147483648u)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
  }
  {
    int z=m4(0);unsigned int a = 123u;
 
    if (a == 123u)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  {
    int a = 2147483647;
 
    if (a == 2147483647)
        printf("***** CATEGORY - 25 ***** O K *****\n");
      else
        printf("***** CATEGORY - 25 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

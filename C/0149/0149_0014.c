#include <stdlib.h>
#include <stdio.h>
#include <math.h>
volatile int f03();
 
const int f04();
int main()
{
  printf("***** CATEGORY *** TEST *** START *****\n");
  {
    volatile int f01();
    int a;
    a = f01();
 
    if (a == 1)
        printf("***** CATEGORY - 01 ***** OK *****\n");
      else
        printf("***** CATEGORY - 01 ***** NG *****\n");
  }
  {
    const int f02();
    int a;
    a = f02();
 
    if (a == 1)
        printf("***** CATEGORY - 02 ***** OK *****\n");
      else
        printf("***** CATEGORY - 02 ***** NG *****\n");
  }
  {
    int a;
    a = f03();
 
    if (a == 1)
        printf("***** CATEGORY - 03 ***** OK *****\n");
      else
        printf("***** CATEGORY - 03 ***** NG *****\n");
  }
  {
    int a;
    a = f04();
 
    if (a == 1)
        printf("***** CATEGORY - 04 ***** OK *****\n");
      else
        printf("***** CATEGORY - 04 ***** NG *****\n");
  }
  printf("***** CATEGORY *** TEST ***  END  *****\n");
exit (0);
}
 
volatile int f01() { return 1; }
 
const    int f02() { return 1; }
 
volatile int f03() { return 1; }
 
const    int f04() { return 1; }

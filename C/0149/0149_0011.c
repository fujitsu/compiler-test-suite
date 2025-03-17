#include <stdlib.h>
#include <stdio.h>
#include <math.h>
unsigned int f01(double);
signed int   f02(float);
int          f03(long double);
int main()
{
  printf("***** CATEGORY *** TEST *** START *****\n");
  {
    double a = 10.;
    unsigned int b;
    b = f01(a);
 
    if (b == 10u)
        printf("***** CATEGORY - 01 ***** OK *****\n");
      else
        printf("***** CATEGORY - 01 ***** NG *****\n");
  }
  {
    float a = 1.0f;
    signed int b;
    b = f02(a);
 
    if (b == 1)
        printf("***** CATEGORY - 02 ***** OK *****\n");
      else
        printf("***** CATEGORY - 02 ***** NG *****\n");
  }
  {
    long double a = 1.0l;
    int b;
    b = f03(a);
 
    if (b == 1)
        printf("***** CATEGORY - 03 ***** OK *****\n");
      else
        printf("***** CATEGORY - 03 ***** NG *****\n");
  }
  printf("***** CATEGORY *** TEST ***  END  *****\n");
exit (0);
}
 
unsigned int f01(double a)      { return((unsigned int)a); }
 
signed int   f02(float a)       { return((signed int)a);   }
 
int          f03(long double a) { return((int)a);          }

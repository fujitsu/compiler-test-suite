#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f02(int);
int main()
{
  printf("***** CATEGORY *** TEST *** START *****\n");
  {
    int a = 10;
    int b;
    int f01(int);
    b = f01(a);
 
    if (b == 1)
        printf("***** CATEGORY - 01 ***** OK *****\n");
      else
        printf("***** CATEGORY - 01 ***** NG *****\n");
  }
  {
    int a = 10;
    int b;
    b = f02(a);
 
    if (b == 1)
        printf("***** CATEGORY - 02 ***** OK *****\n");
      else
        printf("***** CATEGORY - 02 ***** NG *****\n");
  }
  printf("***** CATEGORY *** TEST ***  END  *****\n");
exit (0);
}
 
int f01(int a) { return(a / 10); }
 
int f02(int a) { return(a - 9);  }

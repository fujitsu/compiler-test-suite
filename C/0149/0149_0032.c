#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + c + ( d + 1 );
    if (a == 7)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + c + ( d - 1 );
    if (a == 5)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + c - ( d + 1 );
    if (a == -1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + c - ( d - 1 );
    if (a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - c + ( d + 1 );
    if (a == 3)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - c + ( d - 1 );
    if (a == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - c - ( d + 1 );
    if (a == -5)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - c - ( d - 1 );
    if (a == -3)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

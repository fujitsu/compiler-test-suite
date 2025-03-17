#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int a,b = 1,c = 2;
 
    a = b + ( c + 1 );
    if (a == 4)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b + ( c - 1 );
    if (a == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - ( c + 1 );
    if (a == -2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - ( c - 1 );
    if (a == 0)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b * c + ( d + 1 );
    if (a == 6)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b * c + ( d - 1 );
    if (a == 4)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b * 2 - ( c + 1 );
    if (a == -1)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    a = 1 * 2 - ( b - 3 );
    if (a == 4)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

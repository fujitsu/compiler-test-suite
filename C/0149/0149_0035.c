#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + 1 + ( c * d );
    if (a == 8)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b + 1 - ( c * d );
    if (a == -4)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - 1 + ( c * d );
    if (a == 6)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;
 
    a = b - 1 - ( c * d );
    if (a == -6)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b + 1 + ( c * 2 );
    if (a == 6)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b + 1 - ( c * 2 );
    if (a == -2)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - 1 + ( c * 2 );
    if (a == 4)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - 1 - ( c * 2 );
    if (a == -4)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b + 1 + ( 2 * c );
    if (a == 6)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b + 1 - ( 2 * c );
    if (a == -2)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - 1 + ( 2 * c );
    if (a == 4)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;
 
    a = b - 1 - ( 2 * c );
    if (a == -4)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    a = b + 1 + ( 2 * 3 );
    if (a == 8)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    a = b + 1 - ( 2 * 3 );
    if (a == -4)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    a = b - 1 + ( 2 * 3 );
    if (a == 6)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    int a,b = 1;
 
    a = b - 1 - ( 2 * 3 );
    if (a == -6)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}

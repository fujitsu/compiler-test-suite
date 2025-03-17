#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int *a01;
  int **a02;
  int ***a03;
  int **********a04;
  int *a05[2];
  int *a06[2][2];
  int **a07[2];
  int **a08[2][2];
  int (*a09)[2];
  int (*a10[2])[2];
  int *(a11[2])[2];
  int a = 10;
 
  a01 = &a;
  if (*a01 == 10)
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
 
  a02 = &a01;
  if (**a02 == 10)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
 
  a03 = &a02;
  if (***a03 == 10)
      printf("***** CATEGORY - 03 ***** O K *****\n");
    else
      printf("***** CATEGORY - 03 ***** N G *****\n");
 
  {
    int ****d1      = &a03;
    int *****d2     = &d1;
    int ******d3    = &d2;
    int *******d4   = &d3;
    int ********d5  = &d4;
    int *********d6 = &d5;
 
    a04 = &d6;
    if (**********a04 == 10)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
 
  a05[0] = a01;
  if (*a05[0] == 10)
      printf("***** CATEGORY - 05 ***** O K *****\n");
    else
      printf("***** CATEGORY - 05 ***** N G *****\n");
 
  a06[0][0] = a01;
  if (*a06[0][0] == 10)
      printf("***** CATEGORY - 06 ***** O K *****\n");
    else
      printf("***** CATEGORY - 06 ***** N G *****\n");
 
  a07[1] = a02;
  if (**a07[1] == 10)
      printf("***** CATEGORY - 07 ***** O K *****\n");
    else
      printf("***** CATEGORY - 07 ***** N G *****\n");
 
  a08[1][1] = a02;
  if (**a08[1][1] == 10)
      printf("***** CATEGORY - 08 ***** O K *****\n");
    else
      printf("***** CATEGORY - 08 ***** N G *****\n");
 
  {
    static int aa[2] = { 10,20 };
 
    a09 = &aa;
    if ((*a09)[1] == 20)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
 
    a10[0] = &aa;
    if ((*a10[0])[0] == 10)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
 
    (a11[1])[0] = a01;
    if (*(a11[1])[0] == 10)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
exit (0);
}

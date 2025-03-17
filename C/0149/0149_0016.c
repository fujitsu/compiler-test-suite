#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a = 10,*aa = &a,**aaa = &aa;
 
  int *volatile const a01 = (int *volatile const)aa;
  int **volatile const a02 = (int **volatile const)aaa;
  int *volatile *const a03 = (int *volatile *const)aaa;
  int *const *volatile a04 = (int *const *volatile)aaa;
  int *volatile const *a05 = (int *volatile const *)aaa;
  int *volatile *const *a06 = (int *volatile *const *)&aaa;
  int *const *volatile *a07 = (int *const *volatile *)&aaa;
  int *volatile a08 = (int *volatile)aa;
  int **volatile a09 = (int **volatile)aaa;
  int *volatile *a10 = (int *volatile *)aaa;
  int *const a11 = (int *const)aa;
  int **const a12 = (int **const)aaa;
  int *const *a13 = (int *const *)aaa;
 
  if (*a01 == 10)
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
 
  if (**a02 == 10)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
 
  if (**a03 == 10)
      printf("***** CATEGORY - 03 ***** O K *****\n");
    else
      printf("***** CATEGORY - 03 ***** N G *****\n");
 
  if (**a04 == 10)
      printf("***** CATEGORY - 04 ***** O K *****\n");
    else
      printf("***** CATEGORY - 04 ***** N G *****\n");
 
  if (**a05 == 10)
      printf("***** CATEGORY - 05 ***** O K *****\n");
    else
      printf("***** CATEGORY - 05 ***** N G *****\n");
 
  if (***a06 == 10)
      printf("***** CATEGORY - 06 ***** O K *****\n");
    else
      printf("***** CATEGORY - 06 ***** N G *****\n");
 
  if (***a07 == 10)
      printf("***** CATEGORY - 07 ***** O K *****\n");
    else
      printf("***** CATEGORY - 07 ***** N G *****\n");
 
  if (*a08 == 10)
      printf("***** CATEGORY - 08 ***** O K *****\n");
    else
      printf("***** CATEGORY - 08 ***** N G *****\n");
 
  if (**a09 == 10)
      printf("***** CATEGORY - 09 ***** O K *****\n");
    else
      printf("***** CATEGORY - 09 ***** N G *****\n");
 
  if (**a10 == 10)
      printf("***** CATEGORY - 10 ***** O K *****\n");
    else
      printf("***** CATEGORY - 10 ***** N G *****\n");
 
  if (*a11 == 10)
      printf("***** CATEGORY - 11 ***** O K *****\n");
    else
      printf("***** CATEGORY - 11 ***** N G *****\n");
 
  if (**a12 == 10)
      printf("***** CATEGORY - 12 ***** O K *****\n");
    else
      printf("***** CATEGORY - 12 ***** N G *****\n");
 
  if (**a13 == 10)
      printf("***** CATEGORY - 13 ***** O K *****\n");
    else
      printf("***** CATEGORY - 13 ***** N G *****\n");
exit (0);
}

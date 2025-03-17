#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int a = 10,*aa = &a,**aaa = &aa;
 
  int *volatile const a01 = (int *volatile const)aa;
  int *volatile *const a02 = (int *volatile *const)aaa;
  int *const *volatile a03 = (int *const *volatile)aaa;
  int *volatile a04 = (int *volatile)aa;
  int *const a05 = (int *const)aa;
 
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
 
  if (*a04 == 10)
      printf("***** CATEGORY - 04 ***** O K *****\n");
    else
      printf("***** CATEGORY - 04 ***** N G *****\n");
 
  if (*a05 == 10)
      printf("***** CATEGORY - 05 ***** O K *****\n");
    else
      printf("***** CATEGORY - 05 ***** N G *****\n");
exit (0);
}

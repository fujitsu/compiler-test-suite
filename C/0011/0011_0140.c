#include  <stdio.h>

int main()
{
  static int a[4][2]={ 1, 2, {3}, 4, 5, 6 } ;


  printf("********** TEST START **********\n");

  if (a[0][0] == 1)
      printf(" ***** 01 ***** O   K *****\n");
  else
      printf(" ***** 01 ***** N   G *****\n");
  if (a[0][1] == 2)
      printf(" ***** 02 ***** O   K *****\n");
  else
      printf(" ***** 02 ***** N   G *****\n");
  if (a[1][0] == 3)
      printf(" ***** 03 ***** O   K *****\n");
  else
      printf(" ***** 03 ***** N   G *****\n");
  if (a[1][1] == 0)
      printf(" ***** 04 ***** O   K *****\n");
  else
      printf(" ***** 04 ***** N   G *****\n");
  if (a[2][0] == 4)
      printf(" ***** 05 ***** O   K *****\n");
  else
      printf(" ***** 05 ***** N   G *****\n");
  if (a[2][1] == 5)
      printf(" ***** 06 ***** O   K *****\n");
  else
      printf(" ***** 06 ***** N   G *****\n");
  if (a[3][0] == 6)
      printf(" ***** 07 ***** O   K *****\n");
  else
      printf(" ***** 07 ***** N   G *****\n");
  if (a[3][1] == 0)
      printf(" ***** 08 ***** O   K *****\n");
  else
      printf(" ***** 08 ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}

#include  <stdio.h>

int main()
{
  char *season[] = { "spring", "summer", "autumn", "winter" } ;


  printf("********** TEST START **********\n");

  if (*season[0] == 's')
      printf(" ***** 01 ***** O   K *****\n");
  else
      printf(" ***** 01 ***** N   G *****\n");
  if (*(season[1]+1) == 'u')
      printf(" ***** 02 ***** O   K *****\n");
  else
      printf(" ***** 02 ***** N   G *****\n");
  if (*(season[2]) == 'a')
      printf(" ***** 03 ***** O   K *****\n");
  else
      printf(" ***** 03 ***** N   G *****\n");
  if (*(season[3]) == 'w')
      printf(" ***** 04 ***** O   K *****\n");
  else
      printf(" ***** 04 ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}

#include  <stdio.h>

char ai[5] = { 1,2,3,4,5 } ;
char bi[]  = "abcdef"        ;
char ci[3][3] = { {1,2,3}, {1,2}, {1} } ;
int main()
{
  printf("********** TEST START **********\n");

  if (ai[2] == 3)
      printf("*****  01  ***** O   K *****\n");
  else
      printf("*****  01  ***** N   G *****\n");
  if (bi[4] == 'e')
      printf("*****  02  ***** O   K *****\n");
  else
      printf("*****  02  ***** N   G *****\n");
  if (ci[0][0] == 1)
      printf("*****  03  ***** O   K *****\n");
  else
      printf("*****  03  ***** N   G *****\n");
  if (ci[2][2] == 0)
      printf("*****  04  ***** O   K *****\n");
  else
      printf("*****  04  ***** N   G *****\n");
  if (ci[0][2] == 3)
      printf("*****  05  ***** O   K *****\n");
  else
      printf("*****  05  ***** N   G *****\n");
  if (ci[1][1] == 2)
      printf("*****  06  ***** O   K *****\n");
  else
      printf("*****  06  ***** N   G *****\n");
  if (ci[2][0] == 1)
      printf("*****  07  ***** O   K *****\n");
  else
      printf("*****  07  ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}

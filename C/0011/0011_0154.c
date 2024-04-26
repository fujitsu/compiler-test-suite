#include  <stdio.h>

struct tag1 {
            int a ;
            int aa[3] ;
            } ;

struct tag1  st1 = { 1, { 10,20,30 } } ;
struct tag1 *stp = &st1 ;
int main()
{

  printf("********** TEST START **********\n");

  if (st1.a == 1)
      printf("*****  01  ***** O   K *****\n");
  else
      printf("*****  01  ***** N   G *****\n");
  if (st1.aa[0] == 10 && st1.aa[1] == 20 && st1.aa[2] == 30)
      printf("*****  02  ***** O   K *****\n");
  else
      printf("*****  02  ***** N   G *****\n");
  if (stp->a == 1)
      printf("*****  03  ***** O   K *****\n");
  else
      printf("*****  03  ***** N   G *****\n");
  if (stp->aa[0] == 10 && stp->aa[1] == 20
                         && stp->aa[2] == 30)
      printf("*****  04  ***** O   K *****\n");
  else
      printf("*****  04  ***** N   G *****\n");

  printf("**********  TEST  END  **********\n");

}

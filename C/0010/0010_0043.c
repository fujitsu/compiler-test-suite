#include <stdio.h>

struct tag1 {
            unsigned int           a1:1 ;
            unsigned int           a2:2 ;
            unsigned char b1:6 ;
            char          c1   ;
            } ;

struct tag1  st1 = { 1, 2, 4, 1 } ;
int main()
{

  printf("********** TEST START **********\n");

  if (st1.a1 == 1)
      printf("*****  01  ***** O   K *****\n");
  else
      {
      printf("*****  01  ***** N   G *****\n");
      printf(" (ST1.A1=%x) == %x\n",st1.a1,1);
      }
  if (st1.a2 == 2)
      printf("*****  02  ***** O   K *****\n");
  else
      {
      printf("*****  02  ***** N   G *****\n");
      printf(" (ST1.A2=%x) == %x\n",st1.a2,2);
      }
  if (st1.b1 == 4)
      printf("*****  03  ***** O   K *****\n");
  else
      {
      printf("*****  03  ***** N   G *****\n");
      printf(" (ST1.B1=%x) == %x\n",st1.b1,4);
      }
  if (st1.c1 == 1)
      printf("*****  04  ***** O   K *****\n");
  else
      {
      printf("*****  04  ***** N   G *****\n");
      printf(" (ST1.C1=%x) == %x\n",st1.c1,1);
      }

  printf("********** TEST  END  **********\n");

}

#include  <stdio.h>

union {
      char a ;
      int  b ;
      int  c[5] ;
      } x = { 'a' } ;
int main()
{
  printf("********** TEST START **********\n");

  if (x.a=='a' && x.c[1] == 0)
    printf("********** O  K   **********************\n");
  else
    printf("********** N  G   **********************\n");

  printf("**********  TEST  END  **********\n");
}

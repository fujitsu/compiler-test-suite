#include  <stdio.h>
#include  <string.h>

int main()
{
union {
      char a ;
      int  b ;
      int  c[5] ;
      } x = { 'a' } ;
  memset(&x, 0x00, sizeof(x));
  x.a = 'a';
  printf("********** TEST START **********\n");

  if (x.a=='a' && x.c[1] == 0)
    printf("********** O  K   **********************\n");
  else
    printf("********** N  G   **********************\n");

  printf("**********  TEST  END  **********\n");
}

#include  <stdio.h>

struct {
       int a[10000] ;
       int b[10000] ;
       } x = {{1},{1}} ;
int main()
{

  printf("********** TEST START **********\n");
  if (x.a[0] == 1 && x.b[0] == 1 &&
      x.a[1] == 0 && x.b[1] == 0    )
    printf("********** O   K ***********************\n");
  else
    printf("********** N   G ***********************\n");
  printf("**********  TEST  END  **********\n");

}

#include <stdio.h>

void test(_Bool b)
{
  printf ("%d \n", b);
}
int main()
{
  _Bool b = 5;

  if( sizeof(b) != 1 ) {
     puts("NG1");
  }

  test(5);

  printf ("%d \n", b);
  b = 1;
  printf ("%d \n", b);
  b = 0;
  printf ("%d \n", b);
}

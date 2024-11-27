#include <stdio.h>


void test1()
{
  int    i ;


  i = i | 0x80000000;

  if( i < 0 ) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
}

int main()
{
  test1();
  return 0;
}

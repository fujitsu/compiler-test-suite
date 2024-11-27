#include <stdio.h>


void test1()
{
  int    i ;

  i = -524288 ;         


  i = i >> 3 ;


  printf("%d %x\n", i , i );       

}

int main()
{
  test1();
  return 0;
}

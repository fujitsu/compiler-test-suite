#include <stdio.h>



void test1()
{
  int    i,j ;
  float  f ;

  i = 16777219 ;
   
  f = i;             

  j = f;             

  printf("%d %g %d\n",i, f, j);
}

int main()
{
  test1();
  return 0;
}

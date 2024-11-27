#include <stdio.h>



void test1()
{
  double d ;
  float  f ;

  d = 16777218. ;
   
  f = d;             

  printf("%g\n",f);
}

int main()
{
  test1();
  return 0;
}

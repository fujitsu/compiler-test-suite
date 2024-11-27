#include <stdio.h>
unsigned int iii() 
{
  return 0xfffffff6U;
}

unsigned int jjj() 
{
  return 0xffffffffU;
}

unsigned int kkk() 
{
  return 0x80000000U;
}

unsigned int mmm() 
{
  return 0x40000000U;
}

int test1() 
{
  unsigned int d = 0xfffffff6U;
  
  printf("%x\n", iii()/d);
  printf("%x\n", jjj()/d);
  printf("%x\n", kkk()/d);
  printf("%x\n", mmm()/d);
}

int test2() 
{
  unsigned int d = 0x80000000U;
  
  printf("%x\n", iii()/d);
  printf("%x\n", jjj()/d);
  printf("%x\n", kkk()/d);
  printf("%x\n", mmm()/d);
}

int test3() 
{
  unsigned int d = 0xffffffffU;
  
  printf("%x\n", iii()/d);
  printf("%x\n", jjj()/d);
  printf("%x\n", kkk()/d);
  printf("%x\n", mmm()/d);
}
int main() 
{
  test1();
  test2();
  test3();
}

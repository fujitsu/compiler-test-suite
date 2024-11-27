#include <stdio.h>
#include <string.h>

void test1()
{
  size_t          t = (size_t)-1;
  int             i = -1;
  unsigned int    u = (unsigned )-1;

  t = t >> (sizeof(size_t)*8-16);
  i = i >> (sizeof(signed int)*8-16);
  u = u >> (sizeof(unsigned int)*8-16);
  
  printf("%d %x\n", t, t);        
  printf("%d %x\n", i, i);
  printf("%d %x\n", u, u);
}

int main()
{
  test1();
  return 0;
}

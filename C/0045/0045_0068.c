

#include <stdio.h> 

int j;

unsigned int foo(void)
{
  unsigned int u4;
  for (u4 = 1; u4 < 11; u4 = (unsigned int)(((int) u4) + 1)) j++;
  return 150;
}
int main()
{
  if (foo() == 150 && j==10) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

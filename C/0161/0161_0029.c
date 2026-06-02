#include <stdio.h>
int func();

int main(void)
{
  printf ("###       START    ###\n");
  func();
  printf ("###       END      ###\n");
  return 0;
}
int func()
{
  int a,b;
  a = 0;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  b = a + 1;
#else
  asm("         addi5     {a},1,[b]");
#endif
  if (b == 1)
    printf ("###       OK       ###\n");
  else 
    printf ("###       NG  %d   ###\n",a);
  return 0;
}

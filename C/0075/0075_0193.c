
#include <stdio.h>
#include <setjmp.h>
jmp_buf env;

int throw_ex_until_10(int i)
{
  printf("%d ", i);
  if (i < 10)
    longjmp(env, 1);
  return 1;
}

int main()
{
  volatile int count = 0;
  (void)setjmp(env);
  throw_ex_until_10(++count);
  printf("OK\n");
  return 0;
}

#include <stdio.h>
int tailr(int a)
{
  if (a == 1) return 1;
  return tailr(1);
}

int main(void)
{
  printf("%d\n",tailr(0));
  return 0;
}


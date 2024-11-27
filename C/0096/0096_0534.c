#include <stdio.h>
int tailr(int a)
{
  if (a == 3) return 1;
  else if (a == 4) return 2;
  return tailr(a + 2);
}

int main(void)
{
  printf("%d\n",tailr(0));
  return 0;
}


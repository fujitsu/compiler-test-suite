
#include <stdio.h>

static int rrr()
{
  return 1;
}

int main(void) {
  int i1,i2;
  i1 = rrr();
  i1 = 3 - i1;
  i2 = i1 + i1;
  printf("%d\n",i2);
}

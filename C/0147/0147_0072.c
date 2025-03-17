#include <stdio.h>

void test(int * p1,int * p2)
{
  *p1 = 1;
  *p2 = 2;
  *p1 = *p1 + 1;
}

int main()
{
  int i;
  test(&i,&i);
  printf("%d\n", i);
  return 0;
}

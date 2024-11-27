#include <stdio.h>

int a[1];
int * volatile p;

void sub(void)
{
  *p = *p + 1;
}

int main(void)
{
  p = a;
  a[0] = 1;
  sub();
  printf("%d\n",a[0]);
  return 0;
}

  
  

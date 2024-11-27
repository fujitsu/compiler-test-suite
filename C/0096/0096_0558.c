#include <stdio.h>

volatile  int a[1];

void sub(void)
{
  a[0] = a[0] + 1;
}

int main(void)
{
  a[0] = 1;
  sub();
  printf("%d\n",a[0]);
  return 0;
}

  
  

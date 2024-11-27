#include <stdio.h>

volatile  int a;
void sub(void)
{
  a = a + 1;
}

int main(void)
{
  a = 1;
  sub();
  printf("%d\n",a);
  return 0;
}

  
  

#include <stdio.h>
int main()
{
  int i, a = 0;
  volatile int c;

  c = 1;
  for (i=1; i<100; i++) {
    a = a + c;
  }
  printf("%d\n",a);
}

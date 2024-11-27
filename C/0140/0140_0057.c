#include <stdio.h>

int main()
{
  volatile int a;
  int s[50], i;

  for (i=0; i<50; i++) {
    s[i] = 1;
  }

  a = 0;
  for (i=0; i<50; i++) {
    a = a + s[i];
  }

  if (a == 50)
    printf("*** ok ***\n");
  else
    printf("*** ng ***\n");
}

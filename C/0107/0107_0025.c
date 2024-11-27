#include <stdio.h>

int i;
int *  p = &i;

int main()
{
  *p = 1;
  i = 2;
  if (*p == 2) {
    puts("OK");
  }
  else {
    puts("NG");
  }
  return 0;
}

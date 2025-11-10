#include <stdio.h>
#include "000.hh"

extern int func2(int i);

int func1(int i)
{
  return templ(i);
}

int main()
{
  printf("%d\n", func1(100));
  printf("%d\n", func2(200));
}

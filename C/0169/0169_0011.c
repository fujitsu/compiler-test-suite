#include <stdio.h>

void sub();
int main()
{
  unsigned long long u;
  double d;
  
  u = 0xFFFFFFFFFFFFFFFFULL;
  d = u;
  printf("%g\n",d);
}


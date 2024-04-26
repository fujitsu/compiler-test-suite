#include <stdio.h>

int main()
{
  printf("__STDC_VERSION__ test program\n");
#if !defined(__STDC_VERSION__)
  printf("__STDC_VERSION__ is not defined.\n");
#else
  printf("check compile option.\n");
#endif
  return 0;
}

#include <stdio.h>

int main()
{
  printf("__STDC_VERSION__ test program\n");
#if !defined(__STDC_VERSION__)
  printf("__STDC_VERSION__ is correct.\n");
#else
  printf("check compile option, need \"-ansi\" or \"-std=c89\" option.\n");
#endif

  return 0;
}

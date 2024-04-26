#include <stdio.h>

int main()
{
  printf("__STDC_VERSION__ test program\n");
#if defined(__STDC_VERSION__) && __STDC_VERSION__ == 199901L
  printf("__STDC_VERSION__ is defined. value = %ldL\n", __STDC_VERSION__);
#else
  printf("check compile option.\n");
#endif
  return 0;
}

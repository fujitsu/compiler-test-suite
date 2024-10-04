#include <stdio.h>

int main()
{
#if defined(__x86_64__) || defined(__aarch64__)
  int a;
#else
  long int a;
#endif

  a = 0x4000000000000000ULL;

  if ( a == 0x0 )
    printf("OK\n");
  else
    printf("NG\n");
}

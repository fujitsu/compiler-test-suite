#include <stdio.h>
int main()
{
#if defined(__x86_64__) || defined(__aarch64__)
#if defined(__LP64__) && defined(_LP64)
  puts("OK");
#endif
#else
  puts("OK");
#endif
}

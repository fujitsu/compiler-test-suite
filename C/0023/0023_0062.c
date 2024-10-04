#include <stdlib.h>
#include <stdio.h>

union ss  {
  unsigned long long int a;
  struct {
#if defined(__x86_64) || defined(__aarch64__)
    unsigned  int b;
    unsigned  int c;
#else
    unsigned long int b;
    unsigned long int c;
#endif
  } tt;
};
int main()
{
  union ss var;

  var.a = 0x7fffffffffffffffLL;

#if defined(big_endian)
  if (   var.tt.b == 0x7fffffff
      && var.tt.c == 0xffffffff ) {
#else
  if (   var.tt.b == 0xffffffff
      && var.tt.c == 0x7fffffff ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}

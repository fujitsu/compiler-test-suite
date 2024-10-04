#include <stdlib.h>
#include <stdio.h>

union ss  {
  unsigned int a;
  struct {
    unsigned short int b;
    unsigned short int c;
  } tt;
};
int main()
{
  union ss var;

  var.a = 0x000000005L;

#if defined(big_endian)
  if (   var.tt.b == 0x0
      && var.tt.c == 0x5 ) {
#else
  if (   var.tt.b == 0x5
      && var.tt.c == 0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);
}

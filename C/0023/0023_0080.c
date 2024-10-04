#include <stdlib.h>
#include <stdio.h>

int main()
{
  union {
    unsigned long int a;
    struct {
      unsigned short int b;
      unsigned short int c;
    } d;
  } s, t;

  t.a = 0x80000000;
  s.d.b = t.d.b;
  s.d.c = t.d.c;

#if defined(big_endian)
  if (   s.d.b == 0x8000
      && s.d.c == 0x0 ) {
#else
  if (   s.d.b == 0x0
      && s.d.c == 0x8000 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG\n");
  exit(1);

}

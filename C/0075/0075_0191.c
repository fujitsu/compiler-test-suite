#include <stdio.h>
int main() {
  double r;
  long double x;
  int *p;
  r = 1.4e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xab780000 &&
      p[1] == 0xce2c8023 &&
      (p[2] & 0xffff) == 0x3bf9)
#elif defined(__aarch64__)
  if (p[0] == 0 &&
      p[1] == 0 &&
      p[2] == 0x4756f0 &&
      p[3] == 0x3bf99c59)
#else
  if (p[0] == 0x3bf99c59 &&
      p[1] == 0x4756f0 &&
      p[2] == 0 &&
      p[3] == 0)
#endif
    printf("OK\n");
  else
    printf("NG %x,%x,%x,%x\n",p[0],p[1],p[2],p[3]);
}

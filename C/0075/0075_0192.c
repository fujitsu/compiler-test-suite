#include <stdio.h>
int main() {
  double r;
  long double x;
  int *p;
  r = 1.4e-308;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xddf8d000 &&
      p[1] == 0xa112c41b &&
      (p[2] & 0xffff) == 0x3c00)
#elif defined(__aarch64__)
  if (p[3] == 0x3c004225 &&
      p[2] == 0x8837bbf1 &&
      p[1] == 0xa0000000 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3c004225 &&
      p[1] == 0x8837bbf1 &&
      p[2] == 0xa0000000 &&
      p[3] == 0x0)
#endif
    printf("TEST1 OK\n");
  else
    printf("TEST1 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.4e-309;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0x4b2d8000 &&
      p[1] == 0x80dbd016 &&
      (p[2] & 0xffff) == 0x3bfd)
#elif defined(__aarch64__)
  if (p[3] == 0x3bfd01b7 &&
      p[2] == 0xa02c965b &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bfd01b7 &&
      p[1] == 0xa02c965b &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST2 OK\n");
  else
    printf("TEST2 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.4e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xab780000 &&
      p[1] == 0xce2c8023 &&
      (p[2] & 0xffff) == 0x3bf9)
#elif defined(__aarch64__)
  if (p[3] == 0x3bf99c59 &&
      p[2] == 0x4756f0 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bf99c59 &&
      p[1] == 0x4756f0 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST3 OK\n");
  else
    printf("TEST3 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.4e-311;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xef800000 &&
      p[1] == 0xa4f06682 &&
      (p[2] & 0xffff) == 0x3bf6)
#elif defined(__aarch64__)
  if (p[3] == 0x3bf649e0 &&
      p[2] == 0xcd05df00 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bf649e0 &&
      p[1] == 0xcd05df00 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST4 OK\n");
  else
    printf("TEST4 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.4e-312;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0x8c000000 &&
      p[1] == 0x83f38535 &&
      (p[2] & 0xffff) == 0x3bf3)
#elif defined(__aarch64__)
  if (p[3] == 0x3bf307e7 &&
      p[2] == 0xa6b1800 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bf307e7 &&
      p[1] == 0xa6b1800 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST5 OK\n");
  else
    printf("TEST5 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.411111e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xb6880000 &&
      p[1] == 0xcfcf63a3 &&
      (p[2] & 0xffff) == 0x3bf9)
#elif defined(__aarch64__)
  if (p[3] == 0x3bf99f9e &&
      p[2] == 0xc7476d10 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bf99f9e &&
      p[1] == 0xc7476d10 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST6 OK\n");
  else
    printf("TEST6 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 1.5e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xca080000 &&
      p[1] == 0xdce6894a &&
      (p[2] & 0xffff) == 0x3bf9)
#elif defined(__aarch64__)
  if (p[3] == 0x3bf9b9cd &&
      p[2] == 0x12959410 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bf9b9cd &&
      p[1] == 0x12959410 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST7 OK\n");
  else
    printf("TEST7 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 2.5e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0xfdb00000 &&
      p[1] == 0xb8157268 &&
      (p[2] & 0xffff) == 0x3bfa)
#elif defined(__aarch64__)
  if (p[3] == 0x3bfa702a &&
      p[2] == 0xe4d1fb60 &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bfa702a &&
      p[1] == 0xe4d1fb60 &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST8 OK\n");
  else
    printf("TEST8 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);

  r = 3.5e-310;
  x = r;
  p = (int *)&x;
#if defined(i386) || defined(__x86_64__)
  if (p[0] == 0x4b2e0000 &&
      p[1] == 0x80dbd016 &&
      (p[2] & 0xffff) == 0x3bfb)
#elif defined(__aarch64__)
  if (p[3] == 0x3bfb01b7 &&
      p[2] == 0xa02c965c &&
      p[1] == 0x0 &&
      p[0] == 0x0)
#else
  if (p[0] == 0x3bfb01b7 &&
      p[1] == 0xa02c965c &&
      p[2] == 0x0 &&
      p[3] == 0x0)
#endif
    printf("TEST9 OK\n");
  else
    printf("TEST9 NG %x %x %x %x\n",p[0],p[1],p[2],p[3]);
}

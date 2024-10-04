#include <stdio.h>


  void test1() { printf("asm name OK\n"); }
  void test2() { printf("asm name NG\n"); }


void test() asm("test1");

int main()
{
  int out;
#if defined(__x86_64__)
  register int regvar __asm__("ecx");

#elif defined(__aarch64__)
  register int regvar __asm__("w1");

#else
#error cannot test!
#endif

  regvar = 4;

#if defined(__aarch64__)
  __asm__ ("mov %0,%1" : "=r" (out) : "r" (regvar));
#else
  __asm__ ("mov %1,%0" : "=r" (out) : "r" (regvar));
#endif

  if (out == 4) {
    printf("asm register and asm statement OK\n");
  } else {
    printf("asm register and asm statement NG\n");
  }

  test();

  return 0;
}

#include <setjmp.h>
#include <stdio.h>

#ifdef ORIGINAL
int main()
{
  jmp_buf buf;
  volatile unsigned i = 0;

  if (setjmp(buf) < 10) {
    printf("i == %u\n", i);
    longjmp(buf, ++i);
  }

  return 0;
}
#else
void sub1()
{
  jmp_buf buf;
  volatile unsigned i = 0;

  if (setjmp(buf) < 10) {
    printf("i == %u\n", i);
    longjmp(buf, ++i);
  }
}
#endif

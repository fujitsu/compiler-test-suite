#include <stdio.h>

union ss {
#if defined(__aarch64__)
  unsigned      int aaa;
#else
  unsigned long int aaa;
#endif
  struct {
    unsigned short int low;
    unsigned short int upp;
  } bbb;
};

static void sub1();
int main()
{
  union ss a,b;

  a.aaa = 0x10000000;

  sub1(&a, &b);
  if (b.aaa == 0x10000000)
      printf("OK\n");
  else {
    printf("NG : %x\n", b.aaa);
  }
}

void sub1(a, b)
union ss *a;
union ss *b;
{
  (*b).bbb.low = (*a).bbb.low;
  (*b).bbb.upp = (*a).bbb.upp;
}

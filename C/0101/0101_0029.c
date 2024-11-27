#include <stdio.h>

#if defined(__sparcv9)

static void test(char *p,unsigned long long size)
{
  unsigned long long aligned_size = (size+7) & -8;
  unsigned long long ptr_diff = (unsigned long long)p - aligned_size;

  if( ptr_diff != 0xc0 ) {
    puts("NG");
  }
}

static void *foo0()
{
  char a[0xffffffffULL];
  asm("      sub %g0,%g1,%g1");
  asm("      ret");
  asm("      restore %g1,%g0,%o0");
  return a;
}
static void *foo1()
{
  char a[0x80000000ULL];
  asm("      sub %g0,%g1,%g1");
  asm("      ret");
  asm("      restore %g1,%g0,%o0");
  return a;
}
static void *foo2()
{
  char a[0x100000000ULL];
  asm("      sub %g0,%g1,%g1");
  asm("      ret");
  asm("      restore %g1,%g0,%o0");
  return a;
}
static void *foo3()
{
  char a[0x1fffffffffffffffULL];
  asm("      sub %g0,%g1,%g1");
  asm("      ret");
  asm("      restore %g1,%g0,%o0");
  return a;
}
int main()
{
  void *a;
  a=foo0();
  test(a,0xffffffffULL);
  a=foo1();
  test(a,0x80000000ULL);
  a=foo2();
  test(a,0x100000000ULL);
  a=foo3();
  test(a,0x1fffffffffffffffULL);
  puts("PASS");
}

#else
int main()
{
  puts("PASS");
}

#endif

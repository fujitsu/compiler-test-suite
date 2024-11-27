#include <stdio.h>
int x;

void *foo_s(void)
{
  void *p;
#ifdef __GNUC__
#ifdef i386
  asm ("leaq\t%1,%0"  : "=r"(p)  : "i"(&x));
#elif __x86_64__
  asm ("movq\t%1,%0"  : "=r"(p)  : "i"(&x));
#elif __aarch64__
  asm ("adrp\t%0,%1\n\tadd\t%0, %0, :lo12:%1"  : "=r"(p)  : "i"(&x));
#endif
#else
  p = &x;
#endif
  return p;
}

void *foo_i(void)
{
  void *p;
#ifdef __GNUC__
#ifdef i386
  asm ("leaq\t%1,%0"  : "=r"(p)  : "i"(&x));
#elif __x86_64__
  asm ("movq\t%1,%0"  : "=r"(p)  : "i"(&x));
#elif __aarch64__
  asm ("adrp\t%0,%1\n\tadd\t%0, %0, :lo12:%1"  : "=r"(p)  : "i"(&x));
#endif
#else
  p = &x;
#endif
  return p;
}


void *bar_s(int f)
{
  static int y;
  void *p;
#ifdef __GNUC__
#ifdef i386
  asm ("leaq\t%1,%0"  : "=r"(p)  : "i"(&y));
#elif __x86_64__
  asm ("movq\t%1,%0"  : "=r"(p)  : "i"(&y));
#elif __aarch64__
  asm ("adrp\t%0,%1\n\tadd\t%0, %0, :lo12:%1"  : "=r"(p)  : "i"(&y));
#endif
#else
  p = &y;
#endif
  if (f)
    return p;
  else
    return &y;
}

void *bar_i(int f)
{
  static int y;
  void *p;
#ifdef __GNUC__
#ifdef i386
  asm ("leaq\t%1,%0"  : "=r"(p)  : "i"(&y));
#elif __x86_64__
  asm ("movq\t%1,%0"  : "=r"(p)  : "i"(&y));
#elif __aarch64__
  asm ("adrp\t%0,%1\n\tadd\t%0, %0, :lo12:%1"  : "=r"(p)  : "i"(&y));
#endif
#else
  p = &y;
#endif
  if (f)
    return p;
  else
    return &y;
}
int main()
{
  if( foo_s() !=  &x ) puts("NG1");
  if( foo_i() !=  &x ) puts("NG2");
  if( bar_s(0) !=  bar_s(1) ) puts("NG3");
  if( bar_i(0) !=  bar_i(1) ) puts("NG4");
  puts("OK");
}

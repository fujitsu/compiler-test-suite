

#include <stdio.h>

long i;

int foo_X(void)
{
  long j;
  
  i = 1;                  

#if __GNUC__
#if defined(__aarch64__)
  asm("mov\t%0,%1" : "=X"(j) : "X"(i) );     
#else
  asm("movq\t%1,%0" : "=X"(j) : "X"(i) );     
#endif
#else
  j = i;
#endif
  return j;
}

int foo_g(void)
{
  long j;
  
  i = 1;                  

#if __GNUC__
#if defined(__aarch64__)
  asm("mov\t%0,%1" : "=r"(j) : "r"(i) );     
#else
  asm("movq\t%1,%0" : "=r"(j) : "r"(i) );     
#endif
#else
  j = i;
#endif
  return j;
}

int foo_r(void)
{
  long j;
  
  i = 1;                  

#if __GNUC__
#if defined(__aarch64__)
  asm("mov\t%0,%1" : "=r"(j) : "r"(i) );     
#else
  asm("movq\t%1,%0" : "=r"(j) : "r"(i) );     
#endif
#else
  j = i;
#endif
  return j;
}

double f;

int foo_f(void)
{
  double j;
  
  f = 1;                  

  j = f;
  return j;
}

int foo_Xf(void)
{
  double j;
  
  f = 1;                  

  j = f;
  return j;
}
int main()
{
  if( foo_X() != 1 ) {
    puts("NG X");
  }
  if( foo_g() != 1 ) {
    puts("NG g");
  }
  if( foo_r() != 1 ) {
    puts("NG r");
  }
  if( foo_f() != 1 ) {
    puts("NG f");
  }
  if( foo_Xf() != 1 ) {
    puts("NG Xf");
  }
  puts("PASS");
}

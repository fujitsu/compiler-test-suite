#include <stdio.h>
#include <complex.h>

typedef long double  _Complex  test_t;
typedef long double  elem_t;

typedef struct COMPLEX {
  elem_t r;
  elem_t i;
} complex_t;

void test1()
{
   complex_t a;
   test_t  x;

   x = 1 + 2 * I;
   a = *(complex_t *)&x;

   if(a.r == 1. &&  a.i == 2.) {
     puts("OK1");
   }
}

void test2()
{
   complex_t a;
   test_t  x;

   a.r = 1;
   a.i = 2;
   x = *(test_t *)&a;

   if(creal(x) == 1. &&  cimag(x) == 2.) {
     puts("OK2");
   }
}
int main()
{
  if( sizeof(test_t) != sizeof(complex_t) ) {
    puts("NG");
  }
  test1();
  test2();
  puts("PASS");
}

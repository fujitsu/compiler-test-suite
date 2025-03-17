
#include <stdio.h>
#include <math.h>
#include <complex.h>

typedef float  _Complex  test_t;
typedef float  elem_t;

typedef struct COMPLEX {
  elem_t r;
  elem_t i;
} complex_t;

typedef union V_COMPLEX {
  test_t    c;
  complex_t v;
} v_complex_t;
 
void check(elem_t a,elem_t b)
{
   if((fabs((a - 3.16578)/a) < 0.00001) &&
      (fabs((b - 1.9596)/b)  < 0.00001) ) {
     ;
   }
   else {
     printf("NG %g %g\n",(double)a,(double)b);
   }
}

void test1(test_t x)
{
   check(crealf(x),cimagf(x));
}

void test2(complex_t a)
{
   check(a.r,a.i);
}
int main()
{
  v_complex_t a;

  test1(csinf(((v_complex_t){1 + 2 * I}).c));
  
  a.c=csinf(((v_complex_t){1 + 2 * I}).c);
  test2(a.v);

  puts("PASS");
}


#include <stdio.h>
#include <math.h>
#include <complex.h>

typedef double  _Complex  test_t;
typedef double  elem_t;

typedef struct COMPLEX {
  elem_t r;
  elem_t i;
} complex_t;

typedef struct V_COMPLEX {
  complex_t c;
} v_complex_t;
 
typedef struct V_FC {
  test_t    c;
}  v_test_t;

void check(elem_t a,elem_t b)
{
   if((fabs((a - 2.03272)/a) < 0.00001) &&
      (fabs((b - -3.0519)/b)  < 0.00001) ) {
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
  v_test_t  x;
  v_complex_t a;

  union UNI {
    test_t     t;
    complex_t  v;
  } tmp;

  test1(ccos(((v_test_t){{1 + 2 * I}}).c));
  
  a.c.r = 1;
  a.c.i = 2;
  tmp.t=ccos(*(test_t *)&a.c);
  test2(tmp.v);

  puts("PASS");
}

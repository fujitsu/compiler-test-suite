#include <stdio.h>

typedef float elem_t;

typedef struct COMPLEX {
  elem_t r;
  elem_t i;
} complex_t;

void check(elem_t a,elem_t b)
{
   if(a == 1. && b == 2.) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}

void test(complex_t a)
{
   check(a.r,a.i);
}
int main()
{
  test((complex_t){1,2});

  puts("PASS");
}

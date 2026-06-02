#include <stdio.h>
struct test { int mem; };

int main()
{
  {
    
    struct test o;
    struct test *x = &o;
    struct test y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-01 OK\n");
  }
  {
    
    struct test o;
    struct test *x = &o;
    struct test volatile y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-02 OK\n");
  }
  {
    
    struct test o;
    struct test *x = &o;
    struct test const y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-03 OK\n");
  }
  {
    
    struct test volatile o;
    struct test volatile *x = &o;
    struct test y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-04 OK\n");
  }
  {
    
    struct test volatile o;
    struct test volatile *x = &o;
    struct test volatile y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-05 OK\n");
  }
  {
    
    struct test volatile o;
    struct test volatile *x = &o;
    struct test const y = { 10 };
    *x = y;
    if (x->mem == 10) printf("test 02-06 OK\n");
  }
  return 0;
}

#include <stdio.h>
struct test { int mem; };
struct test2 { struct test mem; };
struct test3 { struct test volatile mem; };

int main()
{
  {
    
    struct test2 o;
    struct test2 *x = &o;
    struct test y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-01 OK\n");
  }
  {
    
    struct test2 o;
    struct test2 *x = &o;
    struct test volatile y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-02 OK\n");
  }
  {
    
    struct test2 o;
    struct test2 *x = &o;
    struct test const y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-03 OK\n");
  }
  {
    
    struct test3 o;
    struct test3 *x = &o;
    struct test y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-04 OK\n");
  }
  {
    
    struct test3 o;
    struct test3 *x = &o;
    struct test volatile y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-05 OK\n");
  }
  {
    
    struct test3 o;
    struct test3 *x = &o;
    struct test const y = { 10 };
    x->mem = y;
    if (x->mem.mem == 10) printf("test 04-06 OK\n");
  }
  return 0;
}

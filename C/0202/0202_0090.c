#include <stdio.h>
struct test { int mem; };
struct test2 { struct test mem; };
struct test3 { struct test volatile mem; };

int main()
{
  {
    
    struct test2 x;
    struct test y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-01 OK\n");
  }
  {
    
    struct test2 x;
    struct test volatile y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-02 OK\n");
  }
  {
    
    struct test2 x;
    struct test const y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-03 OK\n");
  }
  {
    
    struct test3 x;
    struct test y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-04 OK\n");
  }
  {
    
    struct test3 x;
    struct test volatile y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-05 OK\n");
  }
  {
    
    struct test3 x;
    struct test const y = { 10 };
    x.mem = y;
    if (x.mem.mem == 10) printf("test 03-06 OK\n");
  }
  return 0;
}

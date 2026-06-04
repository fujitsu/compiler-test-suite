#include <stdio.h>
struct test { int mem; };

int main()
{
  {
    
    struct test x;
    struct test y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-01 OK\n");
  }
  {
    
    struct test x;
    struct test volatile y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-02 OK\n");
  }
  {
    
    struct test x;
    struct test const y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-03 OK\n");
  }
  {
    
    struct test volatile x;
    struct test y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-04 OK\n");
  }
  {
    
    struct test volatile x;
    struct test volatile y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-05 OK\n");
  }
  {
    
    struct test volatile x;
    struct test const y = { 10 };
    x = y;
    if (x.mem == 10) printf("test 01-06 OK\n");
  }
  return 0;
}

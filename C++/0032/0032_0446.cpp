class S {};
struct A { int i; };                     
struct B: A { S s; };                    
struct C: B { C() {} };                  
static bool b = __has_nothrow_assign(C); 

#include <cstdio>

int main()
{
  printf("test ended\n");

  return 0;
}

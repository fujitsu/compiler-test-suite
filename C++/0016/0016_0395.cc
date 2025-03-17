 


struct A {
  int a;
  A() { a = 0; }
  ~A() { a--; }
};
struct B : A {
  int b;
  
  };
#include <stdio.h>
int main()
{
  B b;

  puts("ok");
}

#include <cstdio>

struct A {
  int i;
  constexpr A():i(10) {
  }
};


int main()
{
  A a;
  printf("a.i: %d\n", a.i);
}

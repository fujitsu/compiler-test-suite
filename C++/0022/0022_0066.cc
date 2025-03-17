struct S {
  struct {
    struct {
    } d;
  };
} s;
template <typename T> struct X {};

void test() {
  typedef typeof(s.d) D;
  X<D> xd;
}

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

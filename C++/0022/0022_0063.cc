struct S {
  struct {
    struct {
    } d;
  } m;
} s;
typedef typeof(s.m.d) D;
template <typename T> struct X {};
X<D> xd;

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

struct S {
  struct {
    struct {
    } d;
  };
} s;
typedef typeof(s.d) D;
template <typename T> struct X {};
X<D> xd;

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

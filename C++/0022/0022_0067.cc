typedef struct {
  struct {
    struct {
    } d;
  };
} D;
template <typename T> struct X {};

void test() { X<D> xd; }

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

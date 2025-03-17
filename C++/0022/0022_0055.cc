template <class T, int I> void f() { static T x[I]; }
template void f<int, 1000>();

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

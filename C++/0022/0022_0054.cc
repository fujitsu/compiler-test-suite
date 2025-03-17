template <typename T> void f() { static T x[sizeof(T)]; }
template void f<int>();

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}

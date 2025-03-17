#include <stdio.h>

template <class T> T add(T a, T b) { return a + b; }

int main(void) {
  int a = 10;
  int b = 20;

  int c = add(a, b);

  printf("%d\n", c);

  return 0;
}

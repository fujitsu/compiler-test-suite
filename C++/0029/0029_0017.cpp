#include <stdio.h>

template <class T> T add(T a, T b) { return a + b; }

template float add(float a, float b);
template double add(double a, double b);

int main(void) {
  int a = 10;
  int b = 20;

  int c = add(a, b);

  printf("%d\n", c);

  return 0;
}

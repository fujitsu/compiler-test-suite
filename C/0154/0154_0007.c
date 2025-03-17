#include <stdio.h>

float foo(float i, float j) {
  return (i + j);
}
int main()
{
  float x;
  x = foo(-10000.f, -20000.f);
  if (x == -30000.f) {
    printf("OK\n");
  } else {
    printf("NG\t%f\n", x);
  }
}

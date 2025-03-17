#include <stdio.h>

template<typename T> T func() {
  printf("ok\n");
  return T(0);
}
int main() {
  func<double>();
}
double func() {
  printf("ng\n");
  return double(0);
}


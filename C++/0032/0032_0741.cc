#include <stdio.h>

double func() {
  printf("ok\n");
  return double(0);
}
int main() {
  func();
}
template<typename T> T func() {
  printf("ng\n");
  return T(0);
}


#include <cmath>
#include <cstdarg>
#include <iostream>

int gi[10];
void f1(int num, ...) {
  int i;
  for (i = 0; i < 10; ++i) {
    va_list ap;
    va_start(ap, num);
    gi[i] = va_arg(ap, int);
    va_end(ap);
  }
}

int check_array(int val) {
  int i;
  for (i = 0; i < 10; ++i) {
    if (gi[i] != val) {
      return 1;
    }
  }
  return 0;
}
int main() {
  f1(0, 1);
  if (!check_array(1)) {
    std::cout << "OK" << std::endl;
  }
  return 0;
}

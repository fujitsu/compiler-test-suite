#include <cmath>
#include <cstdarg>
#include <iostream>

int f1(int num, ...) {
  int local, ret = 0;
  va_list ap;
  va_start(ap, num);
  if (num == 1) {
    ret = va_arg(ap, int);
  } else {
    local = (int)std::sin((float)va_arg(ap, double));
  }
  va_end(ap);
  return ret;
}

int main() {
  int v1, v2;
  v1 = f1(1, 2);
  v2 = f1(2, 2.0);
  if (v1 == 2 && v2 == 0) {
    std::cout << "OK" << std::endl;
  }
  return 0;
}

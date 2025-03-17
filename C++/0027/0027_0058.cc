#include <cmath>
#include <cstdarg>
#include <iostream>

void f1(int *pa, int const *const pb, int &ret1, int ret2, ...) {
  int i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, int);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

int check_array(int *p) {
  int i;
  for (i = 0; i < 10; ++i) {
    if (p[i] != i) {
      return 1;
    }
  }
  return 0;
}

int main() {
  int ret1 = 0, ret2 = 0, a[10], b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  f1(a, b, ret1, ret2, 10);
  if (!check_array(a) && ret1 == 18 && ret2 == 0) {
    std::cout << "OK" << std::endl;
  }
  return 0;
}

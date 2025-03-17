#include <cstdarg>
#include <cstdlib>
#include <iostream>

void f1(int num, ...) {
  int i;
  va_list ap;
  va_start(ap, num);
  for (i = 0; i < num; ++i) {
    printf("%d\n", va_arg(ap, int));
  }
  va_end(ap);
}

int main() {
  f1(10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
  return 0;
}

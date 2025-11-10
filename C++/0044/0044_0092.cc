#include <stdio.h>

void Func() noexcept(false) {
  throw 1;
}
int main() {
  try {
    Func();
  } catch (int) {
    printf("ok\n");
  } catch (...) {
    printf("ng\n");
  }
}


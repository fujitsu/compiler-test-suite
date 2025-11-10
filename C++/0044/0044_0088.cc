#include <stdio.h>

void Func() {
  throw 1;
}
int main() {
  try {
    Func();
    printf("ng\n");
  } catch (...) {
    printf("ok\n");
  }
}


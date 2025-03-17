#include <stdio.h>

void Func() {
  throw 1;
  try {
    try {
      printf("");
    } catch (int) {
      printf("ng\n");
    }
  } catch (int) {
    printf("ng\n");
  }
}
int main() {
  try {
    Func();
  } catch (int) {
    printf("ok\n");
  }
}

#include <stdio.h>

void Func() {
  try {
    throw 1;
  } catch (int) {
    throw;
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
}
int main() {
  try {
    Func();
  } catch (int) {
    printf("ok\n");
  }
}

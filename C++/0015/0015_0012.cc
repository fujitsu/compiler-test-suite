#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (...) {
      throw;
      try {
        printf("");
      } catch (int) {
        printf("ng\n");
      }
    }
  } catch (...) {
    printf("ok\n");
  }
}

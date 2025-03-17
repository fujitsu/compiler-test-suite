#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (int) {
    try {
      throw;
      try {
        printf("");
      } catch (int) {
        printf("ng\n");
      }
    } catch (int) {
      printf("ok\n");
    }
  }
}

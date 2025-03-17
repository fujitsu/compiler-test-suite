#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (int) {
    try {
      try {
        printf("");
      } catch (int) {
        printf("ng\n");
      }
      throw;
    } catch (int) {
      printf("ok\n");
    }
  }
}

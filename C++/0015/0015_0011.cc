#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (int) {
      throw;
      try {
        printf("");
      } catch (int) {
        printf("ng\n");
      }
    }
  } catch (int) {
    printf("ok\n");
  }
}

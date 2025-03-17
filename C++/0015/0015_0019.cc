#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (int) {
    try {
      try {
        throw;
      } catch (int) {
        printf("ok\n");
      }
    } catch (int) {
      printf("ng\n");
    }
  }
}

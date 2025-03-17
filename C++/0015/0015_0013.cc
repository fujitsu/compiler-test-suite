#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (int) {
    try {
      throw;
      printf("");
    } catch (int) {
      printf("ok\n");
    }
  }
}

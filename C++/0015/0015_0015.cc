#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (int) {
    try {
      printf("");
      throw;
    } catch (int) {
      printf("ok\n");
    }
  }
}

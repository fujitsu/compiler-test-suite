#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (...) {
    try {
      printf("");
      throw;
    } catch (...) {
      printf("ok\n");
    }
  }
}

#include <stdio.h>
int main() {
  try {
    throw 1;
  } catch (...) {
    try {
      throw;
      printf("");
    } catch (...) {
      printf("ok\n");
    }
  }
}

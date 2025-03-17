#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (...) {
      throw;
    }
  } catch (...) {
    printf("ok\n");
  }
}

#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (...) {
      throw 1;
    }
  } catch (...) {
    printf("ok\n");
  }
}

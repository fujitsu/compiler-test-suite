#include <stdio.h>
int main() {
  try {
    throw 1;
    try {
      printf("");
    } catch (int) {
      printf("ng\n");
    }
  } catch (int) {
    printf("ok\n");
  }
}

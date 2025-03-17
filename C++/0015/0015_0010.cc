#include <stdio.h>
int main() {
  try {
    try {
      printf("");
    } catch (int) {
      printf("ng\n");
    }
    throw 1;
  } catch (int) {
    printf("ok\n");
  }
}

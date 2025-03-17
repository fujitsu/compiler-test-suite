#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (int) {
      printf("ok\n");
    }
  } catch (int) {
    printf("ng\n");
  }
}

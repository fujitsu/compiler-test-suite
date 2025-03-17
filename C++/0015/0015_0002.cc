#include <stdio.h>
int main() {
  try {
    printf("");
  } catch (int) {
    printf("ng\n");
  }
  try {
    printf("");
    throw 1;
  } catch (int) {
    printf("ok\n");
  }
  try {
    printf("");
  } catch (int) {
    printf("ng\n");
  }
}

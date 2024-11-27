#include <stdio.h>

int sum(int x, int y) {
  return x + y;
}

int main(void) {
  if (sum(4, 7) < 12) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}

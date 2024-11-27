#include <stdio.h>

int sum(int x, int y) {
  if (x < 0)
    return 0;

  if (y < 0)
    return -1;

  return x + y;
  printf("NG\n");
}

int main(void) {
  if (sum(4, 7) < 12) {
    printf("OK\n");
    return 0;
    printf("NG\n");
  } else {
    printf("NG\n");
    return 1;
    printf("NG\n");
  }
}

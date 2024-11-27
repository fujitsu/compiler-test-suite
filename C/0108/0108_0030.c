#include <stdio.h>

int sum(int x, int y) {
  if (x < 0) {
    if (y < 0) {
      return -1;
    }
  }

  if (x > 0 && y > 0) {
    return x + y;
  }

  return -1;
}

int main(void) {
  int i;

  for (i = 5; i > -10; i--) {
    if (sum(2,i) >= 0) {
      printf("OK\n");      
    }
  }

  return -1;
}

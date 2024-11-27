#include <stdio.h>

static void sub1(int *count);

int main() {
  int counter = 0;
  sub1(&counter);
  return 0;
}

static void sub1(int *counter) {
  if (*counter == 0) {
    printf("OK\n");
    *counter = (*counter) + 1;
    sub1(counter);
  }
  return;
}

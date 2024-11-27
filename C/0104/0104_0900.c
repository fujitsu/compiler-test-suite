#include <stdio.h>

static void sub1();

int main() {
  sub1();
  return 0;
}

static void sub1() {
  printf("OK\n");
}

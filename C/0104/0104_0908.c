#include <stdio.h>

static void sub1(int *counter);
static void sub2();
static void sub3();
static void sub4();

int main() {
  int counter = 0;
  sub1(&counter);
  return 0;
}

static void sub1(int *counter) {
  if (*counter == 0) {
    sub2();
    *counter = (*counter) + 1;
    sub1(counter);
  }
  return;
}

static void sub2() {
  sub3();
  return;
}

static void sub3() {
  sub4();
  return;
}

static void sub4() {
  printf("OK\n");
  return;
}

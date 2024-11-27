#include <stdio.h>

static void sub1();
static void sub2();
static void sub3();
static void sub4();

int main() {
  sub1();
  return 0;
}

static void sub1() {
  sub2();
}

static void sub2() {
  sub3();
}

static void sub3() {
  sub4();
}

static void sub4() {
  printf("OK\n");
}

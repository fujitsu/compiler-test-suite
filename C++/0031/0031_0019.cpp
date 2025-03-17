#include <stdio.h>

int sub(int in) {

  if (in == 0)
    throw 10;

  return in * 3;
}

void funca(void) {
  int ret = 0;
  try {
    ret += sub(10);
    ret += sub(0);
    ret += sub(20);
  } catch (...) {
    if (ret != 30)
      puts("NG");
  }
}

void funcb(void) {
  int ret = 0;

  try {
    ret += sub(10);
    ret += sub(20);
    ret += sub(30);
  } catch (...) {
    if (ret != 180)
      puts("NG");
  }
}

int main() {
  int i;
  for (i = 0; i < 100; i++) {
    funca();
    funcb();
  }
  puts("OK");
}

#include "000.h"
#include <stdio.h>

int c = 0;
int m = 0;
int d = 0;
int x = 1;

bool flag = true;

void judge(int ac, int am, int ad) {
  ichck(1, ac, c, "constructor");
  ichck(2, am, m, "main");
  ichck(3, ad, d, "destructor");
}

extern __attribute__((constructor, destructor)) void a();

void a() {

  if (flag) {
    header("test", "constructor");
    c = x;
    flag = false;
  } else {
    d = x * 100;
    judge(1, 10, 100);
    header("test", "constructor");
  }
}

int main() { m = x * 10; }

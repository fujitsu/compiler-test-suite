#include "000.h"
#include <iostream>
using namespace std;

int c = 0;
int m = 0;
int d = 0;
int x = 1;

void judge(int ac, int am, int ad) {
  ichck(1, ac, c, "constructor");
  ichck(2, am, m, "main");
  ichck(3, ad, d, "destructor");
}

static __attribute__((destructor)) void b() {
  d = x * 100;
  judge(0, 10, 100);
  header("test", "constructor");
}

int main() {
  header("test", "constructor");
  m = x * 10;
  exit(1);
}

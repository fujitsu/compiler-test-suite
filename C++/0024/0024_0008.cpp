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

namespace aaa {

__attribute__((constructor)) int a() {
  header("test", "constructor");
  c = x;
  return 0;
}
}

int main() {
  m = x * 10;
  judge(1, 10, 0);
  header("test", "constructor");
}

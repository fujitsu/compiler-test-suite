#include <cassert>

struct S2 {
  void f(int i);
};

void S2::f(int i) {
  [=, this] { assert(i == 2); };
}

int main() {
  S2 s2;
  s2.f(2);
}

#include <cassert>

struct Cpture {
  Cpture(int i = 0) : si(i) {}
  void func() {
    auto lmd = [this](auto b) { return this->si + b; };
    assert(lmd(5) == si + 5);
  }
  int si;
};

void test() {
  Cpture cp(4);
  cp.func();

  int a = 1;
  auto lmd = [a](auto b) { return a + b; };
  assert(lmd(1) == 2);
}

int main() {
  test();
  return 0;
}

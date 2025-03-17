#include <cassert>

int flag = 0;
void f(int (*)(int b)) { flag = 1; }

void test() {
  auto glambda = [](auto a) { return a; };
  f(glambda);
  assert(flag == 1);
}

int main() {
  test();
  return 0;
}

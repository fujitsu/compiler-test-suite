#include <cassert>

int flag = 0;
void h(int (*)(int)) { flag = 1; }
void h(char (*)(int)) { flag = 2; }

void test() {
  auto glambda = [](auto a) { return a; };
  h(glambda);
  assert(flag == 1);
}

int main() {
  test();
  return 0;
}

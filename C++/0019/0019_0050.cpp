#include <cassert>

void test() {
  auto GL = [](auto a) { return a; };
  int (*GL_int)(int) = GL;
  assert(GL_int(3) == GL(3));
}

int main() {
  test();
  return 0;
}
